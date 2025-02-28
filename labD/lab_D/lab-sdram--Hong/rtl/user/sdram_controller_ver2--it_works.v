module SDRAM_arbiter (
        input   clk,
        input   rst,

        
        /*// CPU WB interface
        //input wb_clk_i,
        //input wb_rst_i,
        input wbs_stb_i_CPU,
        input wbs_cyc_i_CPU,
        input wbs_we_i_CPU,
        input [3:0] wbs_sel_i_CPU,
        input [31:0] wbs_dat_i_CPU,
        input [31:0] wbs_adr_i_CPU,
        output wbs_ack_o_CPU,
        output [31:0] wbs_dat_o_CPU,


        // FIR WB interface
        //input wb_clk_i,
        //input wb_rst_i,
        input wbs_stb_i_FIR,
        input wbs_cyc_i_FIR,
        input wbs_we_i_FIR,
        input [3:0] wbs_sel_i_FIR,
        input [31:0] wbs_dat_i_FIR,
        input [31:0] wbs_adr_i_FIR,
        output wbs_ack_o_FIR,
        output [31:0] wbs_dat_o_FIR,

        // MM WB interface
        //input wb_clk_i,
        //input wb_rst_i,
        input wbs_stb_i_MM,
        input wbs_cyc_i_MM,
        input wbs_we_i_MM,
        input [3:0] wbs_sel_i_MM,
        input [31:0] wbs_dat_i_MM,
        input [31:0] wbs_adr_i_MM,
        output wbs_ack_o_MM,
        output [31:0] wbs_dat_o_MM,*/

        // CPU interface
        input   [22:0] CPU_address,
        input   CPU_rw, // 1 = write, 0 = read
        input   [31:0] data_from_CPU,
        output reg [31:0] data_to_CPU,
        output reg CPU_busy,
        input   CPU_in_valid,
        output reg CPU_out_valid,
        input   CPU_prefetch_step,

        // SDRAM controller interface
        output reg   [22:0] controller_address,   // the address will be remap to addr in sdram_controller
        output reg  controller_rw,                 // 1 = write, 0 = read
        output reg  [31:0] data_to_controller,
        input  [31:0] data_from_controller,
        input  controller_busy,               // controller is busy when high
        output reg  controller_in_valid,           // pulse high to initiate a read/write
        input  controller_out_valid,           // pulses high when data from read is valid
        output reg controller_prefetch_step
    );

    ///////////////////////////////////////// (For test) /////////////////////////////////////////
    wire [22:0] prefetch_address_CPU0;
    wire [22:0] prefetch_address_CPU1;
    wire [22:0] prefetch_address_CPU2;
    wire [31:0] prefetch_buffer_CPU0;
    wire [31:0] prefetch_buffer_CPU1;
    wire [31:0] prefetch_buffer_CPU2;
    wire [2:0] request_FIFO_0;
    wire [2:0] request_FIFO_1;
    wire [2:0] request_FIFO_2;

    assign prefetch_address_CPU0=prefetch_address_CPU[0];
    assign prefetch_address_CPU1=prefetch_address_CPU[1];
    assign prefetch_address_CPU2=prefetch_address_CPU[2];
    assign prefetch_buffer_CPU0=prefetch_buffer_CPU[0];
    assign prefetch_buffer_CPU1=prefetch_buffer_CPU[1];
    assign prefetch_buffer_CPU2=prefetch_buffer_CPU[2];
    assign request_FIFO_0=request_FIFO[0];
    assign request_FIFO_1=request_FIFO[1];
    assign request_FIFO_2=request_FIFO[2];
    //////////////////////////////////////////////////////////////////////////////////////////////

    localparam CPU_IDLE = 3'd0, CPU_WRITE = 3'd1, CPU_CHECK_PREFETCH = 3'd2,/* CPU_READ_REQUEST = 3'd3,*/ CPU_READ = 3'd3, CPU_OUTPUT = 3'd4;
    localparam FIFO_IDLE = 3'd0, FIFO_WRITE = 3'd1, FIFO_READ = 3'd2, FIFO_PREFETCH = 3'd3;
    
    
    reg [22:0] controller_address_before_FF;
    reg controller_rw_before_FF;
    reg [31:0] data_to_controller_before_FF;
    reg controller_in_valid_before_FF;
    reg controller_prefetch_step_before_FF;

    
    reg [31:0] data_to_CPU_before_FF;
    reg CPU_busy_before_FF;
    reg CPU_out_valid_before_FF;

    reg [2:0] request_FIFO [0:2], next_request_FIFO [0:2]; // request_FIFO[XX][2]: CPU; request_FIFO[XX][1]: FIR; request_FIFO[XX][0]: MM
    reg [2:0] state_FIFO;
    reg [2:0] next_state_FIFO;
    reg [1:0] prefetch_counter;
    reg [1:0] next_prefetch_counter;
    reg request_CPU, next_request_CPU;
    reg request_CPU_accept, next_request_CPU_accept;

    reg [2:0] state_CPU;
    reg [2:0] next_state_CPU;

    reg [31:0] prefetch_buffer_CPU [0:2], next_prefetch_buffer_CPU[0:2];
    reg [22:0] prefetch_address_CPU [0:2], next_prefetch_address_CPU [0:2];
    reg [22:0] CPU_address_saved, next_CPU_address_saved;
    reg CPU_rw_saved, next_CPU_rw_saved;
    reg [31:0] data_from_CPU_saved, next_data_from_CPU_saved;

    integer i;

    
    //always @* begin
    //    next_request_CPU_processed = (request_CPU & )
    //end

    //////////////////////////////////////////// (CPU request) ////////////////////////////////////////////
    always @* begin
        case(state_CPU)
            CPU_IDLE: begin
                CPU_out_valid_before_FF=0;
                data_to_CPU_before_FF=0;

                /*if(wbs_adr_i[11:0]==12'h000) begin
                end
                else begin
                end*/
                if(CPU_in_valid) begin
                    CPU_busy_before_FF=1;
                    next_CPU_rw_saved=CPU_rw;
                    next_CPU_address_saved=CPU_address;
                    next_data_from_CPU_saved=data_from_CPU;
                    if(CPU_rw) begin // 1 for write
                        next_state_CPU=CPU_WRITE;
                        next_request_CPU=1;
                    end
                    else begin // 0 for read
                        next_state_CPU=CPU_CHECK_PREFETCH;
                        next_request_CPU=0;
                    end
                end
                else begin
                    next_state_CPU=CPU_IDLE;
                    CPU_busy_before_FF=0;
                    next_CPU_address_saved=0;
                    next_CPU_rw_saved=0;
                    next_data_from_CPU_saved=0;
                    next_request_CPU=0;
                end

                
            end
            CPU_WRITE: begin
                CPU_busy_before_FF=0;
                CPU_out_valid_before_FF=0;
                data_to_CPU_before_FF=0;
                next_CPU_address_saved=CPU_address_saved;
                next_data_from_CPU_saved=data_from_CPU_saved;
                next_CPU_rw_saved=CPU_rw_saved;
                if(request_CPU_accept) begin
                    next_request_CPU=0;
                end
                else begin
                    next_request_CPU=request_CPU;
                end

                if((request_FIFO[0][2]==1) && (state_FIFO==FIFO_WRITE)) begin // [0] means the being-processed request; [2] is the place of CPU_request (request_FIFO[XX][2]: CPU)
                    next_state_CPU=CPU_IDLE;
                end
                else begin
                    next_state_CPU=CPU_WRITE;
                end

            end
            CPU_CHECK_PREFETCH: begin
                CPU_busy_before_FF=0;
                next_CPU_address_saved=CPU_address_saved;
                next_data_from_CPU_saved=data_from_CPU_saved;
                next_CPU_rw_saved=CPU_rw_saved;

                if(CPU_address_saved == prefetch_address_CPU[0]) begin
                    next_state_CPU=CPU_OUTPUT;
                    CPU_out_valid_before_FF=1;
                    data_to_CPU_before_FF=prefetch_buffer_CPU[0];
                    next_request_CPU=0;
                end
                else if(CPU_address_saved == prefetch_address_CPU[1]) begin
                    next_state_CPU=CPU_OUTPUT;
                    CPU_out_valid_before_FF=1;
                    data_to_CPU_before_FF=prefetch_buffer_CPU[1];
                    next_request_CPU=0;
                end
                else if(CPU_address_saved == prefetch_address_CPU[2]) begin
                    next_state_CPU=CPU_OUTPUT;
                    CPU_out_valid_before_FF=1;
                    data_to_CPU_before_FF=prefetch_buffer_CPU[2];
                    next_request_CPU=0;
                end
                else begin
                    next_state_CPU=CPU_READ;
                    CPU_out_valid_before_FF=0;
                    data_to_CPU_before_FF=0;
                    next_request_CPU=1;
                end
            end
            CPU_READ: begin
                CPU_busy_before_FF=0;
                next_CPU_address_saved=CPU_address_saved;
                next_data_from_CPU_saved=data_from_CPU_saved;
                next_CPU_rw_saved=CPU_rw_saved;

                if(request_CPU_accept) begin
                    next_request_CPU=0;
                end
                else begin
                    next_request_CPU=request_CPU;
                end
                
                if((request_FIFO[0][2]==1) && (controller_out_valid==1)) begin // [0] means the being-processed request; [2] is the place of CPU_request (request_FIFO[XX][2]: CPU)
                    next_state_CPU=CPU_OUTPUT;
                    CPU_out_valid_before_FF=1;
                    data_to_CPU_before_FF=data_from_controller;
                end
                else begin
                    next_state_CPU=CPU_READ;
                    CPU_out_valid_before_FF=0;
                    data_to_CPU_before_FF=0;
                end
            end
            CPU_OUTPUT: begin
                next_state_CPU=CPU_IDLE;
                CPU_busy_before_FF=0;
                CPU_out_valid_before_FF=0;
                data_to_CPU_before_FF=0;
                next_CPU_address_saved=0;
                next_data_from_CPU_saved=0;
                next_CPU_rw_saved=0;
                next_request_CPU=0;
            end
            default:begin
                next_state_CPU=CPU_IDLE;
                CPU_busy_before_FF=0;
                CPU_out_valid_before_FF=0;
                data_to_CPU_before_FF=0;
                next_CPU_address_saved=0;
                next_data_from_CPU_saved=0;
                next_CPU_rw_saved=0;
                next_request_CPU=0;
            end
        endcase
    end

    //////////////////////////////////////////// (FIFO) ////////////////////////////////////////////
    always @* begin
        if(request_FIFO[0][2]==1) begin
            controller_address_before_FF=CPU_address_saved;
            controller_rw_before_FF=CPU_rw_saved;
            data_to_controller_before_FF=data_from_CPU_saved;
            controller_prefetch_step_before_FF=CPU_prefetch_step;
        end
        /*else if(request_FIFO[0][1]==1) begin
        end
        else if(request_FIFO[0][0]==1) begin
        end*/
        else begin
            controller_address_before_FF=0;
            controller_rw_before_FF=0;
            data_to_controller_before_FF=0;
            controller_prefetch_step_before_FF=0;
        end
    end

    always @* begin
        case(state_FIFO)
            FIFO_IDLE: begin
                //controller_address_before_FF=0;
                //controller_rw_before_FF=0;
                //data_to_controller_before_FF=0;
                //controller_in_valid_before_FF=0;
                next_prefetch_counter=0;
                for(i=0;i<3;i=i+1)begin
                    next_prefetch_buffer_CPU[i] <= prefetch_buffer_CPU[i];
                    next_prefetch_address_CPU[i] <= prefetch_address_CPU[i];
                end

                /*if(wbs_adr_i[11:0]==12'h000) begin
                end
                else begin
                end*/
                if(request_CPU & (~request_CPU_accept)) begin
                    next_state_FIFO=FIFO_IDLE;
                    controller_in_valid_before_FF=0;
                    next_request_CPU_accept=1;
                    if(request_FIFO[0]==3'b000) begin
                        next_request_FIFO[0]=3'b100;
                        next_request_FIFO[1]=request_FIFO[1];
                        next_request_FIFO[2]=request_FIFO[2];
                    end
                    else if(request_FIFO[1]==3'b000) begin
                        next_request_FIFO[0]=request_FIFO[0];
                        next_request_FIFO[1]=3'b100;
                        next_request_FIFO[2]=request_FIFO[2];
                    end
                    else begin
                        next_request_FIFO[0]=request_FIFO[0];
                        next_request_FIFO[1]=request_FIFO[1];
                        next_request_FIFO[2]=3'b100;
                    end
                end
                /*else if(request_FIR) begin
                end
                else if(request_MM) begin
                end*/
                else if(request_FIFO[0]!=3'b000) begin
                    controller_in_valid_before_FF=1;
                    if(((request_FIFO[0][2]==1) && (CPU_rw_saved==1)) /*|| ((request_FIFO[0][1]==1) && (FIR_rw_saved==1)) || ((request_FIFO[0][0]==1) && (MM_rw_saved==1))*/) begin
                        next_state_FIFO=FIFO_WRITE;
                    end
                    else begin
                        next_state_FIFO=FIFO_READ;
                    end
                    next_request_CPU_accept=0;
                    next_request_FIFO[0] <= request_FIFO[0];
                    next_request_FIFO[1] <= request_FIFO[1];
                    next_request_FIFO[2] <= request_FIFO[2];
                    
                end
                else begin
                    next_state_FIFO=FIFO_IDLE;
                    controller_in_valid_before_FF=0;
                    next_request_CPU_accept=0;
                    next_request_FIFO[0] <= request_FIFO[0];
                    next_request_FIFO[1] <= request_FIFO[1];
                    next_request_FIFO[2] <= request_FIFO[2];
                end
            end
            FIFO_WRITE: begin
                next_request_CPU_accept=0;
                next_prefetch_counter=0;
                for(i=0;i<3;i=i+1)begin
                    next_prefetch_buffer_CPU[i] <= prefetch_buffer_CPU[i];
                    next_prefetch_address_CPU[i] <= prefetch_address_CPU[i];
                end

                if(controller_busy) begin
                    next_state_FIFO=FIFO_WRITE;
                    controller_in_valid_before_FF=controller_in_valid;
                    next_request_FIFO[0] <= request_FIFO[0];
                    next_request_FIFO[1] <= request_FIFO[1];
                    next_request_FIFO[2] <= request_FIFO[2];
                end
                else begin
                    next_state_FIFO=FIFO_IDLE;
                    controller_in_valid_before_FF=0;
                    next_request_FIFO[0] <= request_FIFO[1];
                    next_request_FIFO[1] <= request_FIFO[2];
                    next_request_FIFO[2] <= 3'b000;
                end
            end
            FIFO_READ: begin
                next_request_CPU_accept=0;
                next_prefetch_counter=0;
                for(i=0;i<3;i=i+1)begin
                    next_prefetch_buffer_CPU[i] <= prefetch_buffer_CPU[i];
                    next_prefetch_address_CPU[i] <= prefetch_address_CPU[i];
                end
                next_request_FIFO[0] <= request_FIFO[0];
                next_request_FIFO[1] <= request_FIFO[1];
                next_request_FIFO[2] <= request_FIFO[2];

                if(controller_busy) begin
                    next_state_FIFO=FIFO_READ;
                    controller_in_valid_before_FF=controller_in_valid;
                end
                else if(controller_out_valid) begin
                    next_state_FIFO=FIFO_PREFETCH;
                    controller_in_valid_before_FF=0;
                end
                else begin
                    next_state_FIFO=FIFO_READ;
                    controller_in_valid_before_FF=0;
                end
            end
            FIFO_PREFETCH: begin
                next_prefetch_counter = prefetch_counter+1;
                if(prefetch_counter==2'd2) begin
                    next_state_FIFO=FIFO_IDLE;
                    next_request_FIFO[0] <= request_FIFO[1];
                    next_request_FIFO[1] <= request_FIFO[2];
                    next_request_FIFO[2] <= 3'b000;

                    if(request_FIFO[0][2]==1) begin // CPU
                        next_prefetch_address_CPU[0]=prefetch_address_CPU[0];
                        next_prefetch_address_CPU[1]=prefetch_address_CPU[1];
                        next_prefetch_address_CPU[2]=prefetch_address_CPU[2];
                        next_prefetch_buffer_CPU[0]=prefetch_buffer_CPU[0];
                        next_prefetch_buffer_CPU[1]=prefetch_buffer_CPU[1];
                        next_prefetch_buffer_CPU[2]=data_from_controller;
                    end
                    /*else if(request_FIFO[0][1]==1) begin // FIR
                    end*/
                    else begin // MM
                        for(i=0;i<3;i=i+1)begin
                            next_prefetch_buffer_CPU[i] <= prefetch_buffer_CPU[i];
                            next_prefetch_address_CPU[i] <= prefetch_address_CPU[i];
                        end
                    end
                end
                else if(prefetch_counter==2'd1) begin
                    next_state_FIFO=FIFO_PREFETCH;
                    next_request_FIFO[0] <= request_FIFO[0];
                    next_request_FIFO[1] <= request_FIFO[1];
                    next_request_FIFO[2] <= request_FIFO[2];

                    if(request_FIFO[0][2]==1) begin // CPU
                        next_prefetch_address_CPU[0]=prefetch_address_CPU[0];
                        next_prefetch_address_CPU[1]=prefetch_address_CPU[1];
                        next_prefetch_address_CPU[2]=prefetch_address_CPU[2];
                        next_prefetch_buffer_CPU[0]=prefetch_buffer_CPU[0];
                        next_prefetch_buffer_CPU[1]=data_from_controller;
                        next_prefetch_buffer_CPU[2]=prefetch_buffer_CPU[2];
                    end
                    /*else if(request_FIFO[0][1]==1) begin // FIR
                    end*/
                    else begin // MM
                        for(i=0;i<3;i=i+1)begin
                            next_prefetch_buffer_CPU[i] <= prefetch_buffer_CPU[i];
                            next_prefetch_address_CPU[i] <= prefetch_address_CPU[i];
                        end
                    end
                end
                else begin
                    next_state_FIFO=FIFO_PREFETCH;
                    next_request_FIFO[0] <= request_FIFO[0];
                    next_request_FIFO[1] <= request_FIFO[1];
                    next_request_FIFO[2] <= request_FIFO[2];
                    
                    if(request_FIFO[0][2]==1) begin // CPU
                        if(controller_prefetch_step) begin
                            next_prefetch_address_CPU[0]=controller_address+16;
                            next_prefetch_address_CPU[1]=controller_address+32;
                            next_prefetch_address_CPU[2]=controller_address+48;
                        end
                        else begin
                            next_prefetch_address_CPU[0]=controller_address+4;
                            next_prefetch_address_CPU[1]=controller_address+8;
                            next_prefetch_address_CPU[2]=controller_address+12;
                        end
                        next_prefetch_buffer_CPU[0]=data_from_controller;
                        next_prefetch_buffer_CPU[1]=0;
                        next_prefetch_buffer_CPU[2]=0;
                    end
                    /*else if(request_FIFO[0][1]==1) begin // FIR
                    end*/
                    else begin // MM
                        for(i=0;i<3;i=i+1)begin
                            next_prefetch_buffer_CPU[i] <= prefetch_buffer_CPU[i];
                            next_prefetch_address_CPU[i] <= prefetch_address_CPU[i];
                        end
                    end
                end
            end
            default:begin
                next_state_FIFO=FIFO_IDLE;
                //controller_address_before_FF=0;
                //controller_rw_before_FF=0;
                //data_to_controller_before_FF=0;
                controller_in_valid_before_FF=0;
                next_request_FIFO[0] <= 0;
                next_request_FIFO[1] <= 0;
                next_request_FIFO[2] <= 0;

                next_request_CPU_accept=0;
                next_prefetch_counter=0;
                for(i=0;i<3;i=i+1)begin
                    next_prefetch_buffer_CPU[i] <= 0;
                    next_prefetch_address_CPU[i] <= 0;
                end
                
            end
        endcase
    end


    
    always@(posedge clk) begin
    if(rst) begin // positive reset
        controller_address <= 0;
        controller_rw <= 0;
        data_to_controller <= 0;
        controller_in_valid <= 0;
        controller_prefetch_step <= 0;

        state_FIFO <= FIFO_IDLE;
        for(i=0;i<3;i=i+1)begin
            request_FIFO[i] <= 0;
        end
        prefetch_counter <= 0;

        state_CPU <= CPU_IDLE;
        data_to_CPU <= 0;
        CPU_busy <= 0;
        CPU_out_valid <= 0;
        request_CPU <= 0;
        request_CPU_accept <= 0;
        for(i=0;i<3;i=i+1)begin
            prefetch_buffer_CPU[i] <= 0;
            prefetch_address_CPU[i] <= 1;
        end
        CPU_address_saved <= 0;
        CPU_rw_saved <= 0;
        data_from_CPU_saved <= 0;
    end
    else begin
        controller_address <= controller_address_before_FF;
        controller_rw <= controller_rw_before_FF;
        data_to_controller <= data_to_controller_before_FF;
        controller_in_valid <= controller_in_valid_before_FF;
        controller_prefetch_step <= controller_prefetch_step_before_FF;

        state_FIFO <= next_state_FIFO;
        for(i=0;i<3;i=i+1)begin
            request_FIFO[i] <= next_request_FIFO[i];
        end
        prefetch_counter <= next_prefetch_counter;

        state_CPU <= next_state_CPU;
        data_to_CPU <= data_to_CPU_before_FF;
        CPU_busy <= CPU_busy_before_FF;
        CPU_out_valid <= CPU_out_valid_before_FF;
        request_CPU <= next_request_CPU;
        request_CPU_accept <= next_request_CPU_accept;
        for(i=0;i<3;i=i+1)begin
            prefetch_buffer_CPU[i] <= next_prefetch_buffer_CPU[i];
            prefetch_address_CPU[i] <= next_prefetch_address_CPU[i];
        end
        CPU_address_saved <= next_CPU_address_saved;
        CPU_rw_saved <= next_CPU_rw_saved;
        data_from_CPU_saved <= next_data_from_CPU_saved;
    end
end

endmodule

















module sdram_controller (
        input   clk,
        input   rst,

        // these signals go directly to the IO pins
        // output  sdram_clk,
        output  sdram_cle,
        output  sdram_cs,
        output  sdram_cas,
        output  sdram_ras,
        output  sdram_we,
        output  sdram_dqm,
        output  [1:0]  sdram_ba,
        output  [12:0] sdram_a,
        // Jiin: split dq into dqi (input) dqo (output)
        // inout [7:0] sdram_dq,
        input   [31:0] sdram_dqi,
        output  [31:0] sdram_dqo,

        // User interface
        // Note: we want to remap addr (see below)
        // input [22:0] addr,       // address to read/write
        input   [22:0] user_addr,   // the address will be remap to addr later
        
        input   rw,                 // 1 = write, 0 = read
        input   [31:0] data_in,     // data from a read
        output  [31:0] data_out,    // data for a write
        output  busy,               // controller is busy when high
        input   in_valid,           // pulse high to initiate a read/write
        /////output  out_valid           // pulses high when data from read is valid
        output  out_valid,           // pulses high when data from read is valid // Modified
        //////////////////////////// (Added by us) ////////////////////////////
        input   prefetch_step       // 0 for step=4; 1 for step=16
        ///////////////////////////////////////////////////////////////////////
    );

    // Jiin: SDRAM Timing  3-3-3, i.e. CASL=3, PRE=3, ACT=3
    localparam tCASL            = 13'd2;       // 3T actually
    localparam tPRE             = 13'd2;       // 3T
    localparam tACT             = 13'd2;       // 3T
    localparam tREF             = 13'd6;       // 7T
    localparam tRef_Counter     = 10'd750;     // 

    // MA Map
    // BA (Bank Address) - 9:8
    // RA (Row Address)  - 22:10
    // CA (Col Address)  - 2'b0, 1'b0, <7:0>, 2'b0
    `define BA      9:8
    `define RA      22:10
    `define CA      7:0

    // Address Remap
    //   - remap user address to addr to create more offpage/onpage cases
    // 
    wire [22:0] addr;
    wire [12:0] Mapped_RA;
    wire [1:0]  Mapped_BA;
    wire [7:0]  Mapped_CA;
    assign Mapped_RA = user_addr[22:10];
    assign Mapped_BA = user_addr[9:8];
    assign Mapped_CA = user_addr[7:0];
    assign addr = {Mapped_RA, Mapped_BA, Mapped_CA};

    // Commands for the SDRAM
    localparam CMD_UNSELECTED    = 4'b1000;
    localparam CMD_NOP           = 4'b0111;
    localparam CMD_ACTIVE        = 4'b0011;
    localparam CMD_READ          = 4'b0101;
    localparam CMD_WRITE         = 4'b0100;
    localparam CMD_TERMINATE     = 4'b0110;
    localparam CMD_PRECHARGE     = 4'b0010;
    localparam CMD_REFRESH       = 4'b0001;
    localparam CMD_LOAD_MODE_REG = 4'b0000;
    
    localparam STATE_SIZE = 4;
    localparam INIT = 4'd0,
               WAIT = 4'd1,
               PRECHARGE_INIT = 4'd2,
               REFRESH_INIT_1 = 4'd3,
               REFRESH_INIT_2 = 4'd4,
               LOAD_MODE_REG = 4'd5,
               IDLE = 4'd6,
               REFRESH = 4'd7,
               ACTIVATE = 4'd8,
               READ = 4'd9,
               READ_RES = 4'd10,
               WRITE = 4'd11,
               /////PRECHARGE = 4'd12;
               PRECHARGE = 4'd12, // Modified
               //////////////////////////// (Added by us) ////////////////////////////
               PREFETCH = 4'd13;
               ///////////////////////////////////////////////////////////////////////
    
    // registers for SDRAM signals
    reg cle_d, cle_q;
    reg dqm_q, dqm_d;
    reg [3:0] cmd_d, cmd_q;
    reg [1:0] ba_d, ba_q;
    reg [12:0] a_d, a_q;
    reg [31:0] dq_d, dq_q;
    reg [31:0] dqi_d, dqi_q;
    reg dq_en_d, dq_en_q;

    // Output assignments
    assign sdram_cle = cle_q;
    assign sdram_cs = cmd_q[3];
    assign sdram_ras = cmd_q[2];
    assign sdram_cas = cmd_q[1];
    assign sdram_we = cmd_q[0];
    assign sdram_dqm = dqm_q;
    assign sdram_ba = ba_q;
    assign sdram_a = a_q;
    // assign sdram_dqi = dq_en_q ? dq_q : 8'hZZ; // only drive when dq_en_q is 1
    assign sdram_dqo = dq_en_q ? dq_q : 32'hZZZZZZZZ;

    reg [STATE_SIZE-1:0] state_d, state_q;
    reg [STATE_SIZE-1:0] next_state_d, next_state_q;

    reg [22:0] addr_d, addr_q;
    reg [31:0] data_d, data_q;
    reg out_valid_d, out_valid_q;

    reg [15:0] delay_ctr_d, delay_ctr_q;

    reg [9:0] refresh_ctr_d, refresh_ctr_q;
    reg refresh_flag_d, refresh_flag_q;

    reg ready_d, ready_q;
    reg saved_rw_d, saved_rw_q;
    reg [22:0] saved_addr_d, saved_addr_q;
    reg [31:0] saved_data_d, saved_data_q;

    reg rw_op_d, rw_op_q;

    reg [3:0] row_open_d, row_open_q;
    reg [12:0] row_addr_d[3:0], row_addr_q[3:0];

    reg [2:0] precharge_bank_d, precharge_bank_q;
    integer i;

    assign data_out = data_q;
    assign busy = !ready_q;
    assign out_valid = out_valid_q;

    //////////////////////////// (Added by us) ////////////////////////////
    //reg [1:0] LOAD_MODE_counter;
    reg [1:0] prefetch_counter;
    reg [1:0] next_prefetch_counter;
    ///////////////////////////////////////////////////////////////////////
    
    always @* begin
        // Default values
        dq_d = dq_q;
        dqi_d = sdram_dqi;
        dq_en_d = 1'b0; // normally keep the bus in high-Z
        cle_d = cle_q;
        cmd_d = CMD_NOP; // default to NOP
        dqm_d = 1'b0;
        ba_d = 2'd0;
        a_d = 13'd0;
        state_d = state_q;
        next_state_d = next_state_q;
        delay_ctr_d = delay_ctr_q;
        addr_d = addr_q;
        data_d = data_q;
        out_valid_d = 1'b0;
        precharge_bank_d = precharge_bank_q;
        rw_op_d = rw_op_q;

        //////////////////////////// (Added by us) ////////////////////////////
        next_prefetch_counter = 2'd0;
        ///////////////////////////////////////////////////////////////////////

        row_open_d = row_open_q;

        // row_addr is a 2d array and must be coppied this way
        for (i = 0; i < 4; i = i + 1)
            row_addr_d[i] = row_addr_q[i];

        // The data in the SDRAM must be refreshed periodically.
        // This conter ensures that the data remains intact.
        refresh_flag_d = refresh_flag_q;
        refresh_ctr_d = refresh_ctr_q + 1'b1;
        // Jiin : refresh_counter tRef_Counter
        // if (refresh_ctr_q > 10'd750) begin
        if (refresh_ctr_q > tRef_Counter) begin
            refresh_ctr_d = 10'd0;
            refresh_flag_d = 1'b1;
        end


        // This is a queue of 1 for read/write operations.
        // When the queue is empty we aren't busy and can
        // accept another request.
        saved_rw_d = saved_rw_q;
        saved_data_d = saved_data_q;
        saved_addr_d = saved_addr_q;
        ready_d = ready_q;
        if (ready_q && in_valid) begin
            saved_rw_d = rw;
            saved_data_d = data_in;
            saved_addr_d = addr;
            ready_d = 1'b0;
        end 

        case (state_q)
            ///// INITALIZATION /////
            INIT: begin
                // ready_d = 1'b0;
                row_open_d = 4'b0;
                out_valid_d = 1'b0;
                // a_d = 13'b0;
                // Reserved, Burst Access, Standard Op, CAS = 2, Sequential, Burst = 4
                a_d = {3'b000, 1'b1, 2'b00, 3'b010, 1'b0, 3'b010}; //010
                //////////////////////////// (Added by us) ////////////////////////////
                //cmd_d = CMD_LOAD_MODE_REG;
                ///////////////////////////////////////////////////////////////////////
                ba_d = 2'b0;
                cle_d = 1'b1;
                state_d = WAIT;
                /////state_d = LOAD_MODE_REG; // Modified (At the end, we do not use this modification.)
                // Note: Jiin - We can skip the power-up sequence & LMR
                // directly jump to IDLE state
                // Power-up Sequence
                // 1. wait for power-up sequence, cmd - NOP or INHIBIT
                // 2. precharge all
                // 3. 2 x Auto-refresh

                // delay_ctr_d = 16'd10100; // wait for 101us
                // next_state_d = PRECHARGE_INIT;

                delay_ctr_d = 16'd0;
                // delay_ctr_d = 16'd1;
                next_state_d = IDLE;
                refresh_flag_d = 1'b0;
                refresh_ctr_d = 10'b1;
                ready_d = 1'b1;

                dq_en_d = 1'b0;
            end
            //////////////////////////// (Added by us) ////////////////////////////
            /*LOAD_MODE_REG: begin
                /////refresh_ctr_d = 10'b1;
                a_d = a_q;
                
                if (delay_ctr_q == 13'd3) begin
                    state_d = WAIT;
                    delay_ctr_d = 16'd0;
                end
                else begin
                    state_d = LOAD_MODE_REG;
                    cmd_d = CMD_LOAD_MODE_REG;
                    delay_ctr_d = delay_ctr_q + 1'b1;
                end
            end*/
            ///////////////////////////////////////////////////////////////////////
            WAIT: begin
                delay_ctr_d = delay_ctr_q - 1'b1;
                if (delay_ctr_q == 13'd0) begin
                    state_d = next_state_q;
                    // if (next_state_q == WRITE) begin
                    //     dq_en_d = 1'b1; // enable the bus early
                    //     dq_d = data_q[7:0];
                    // end
                end
            end

            ///// IDLE STATE /////
            IDLE: begin
                if (refresh_flag_q) begin // we need to do a refresh
                    state_d = PRECHARGE;
                    next_state_d = REFRESH;
                    precharge_bank_d = 3'b100; // all banks
                    refresh_flag_d = 1'b0; // clear the refresh flag
                end else if (!ready_q) begin // operation waiting
                    ready_d = 1'b1; // clear the queue
                    rw_op_d = saved_rw_q; // save the values we'll need later
                    addr_d = saved_addr_q;

                    if (saved_rw_q) // Write
                        data_d = saved_data_q;

                    // if the row is open we don't have to activate it
                    if (row_open_q[saved_addr_q[9:8]]) begin
                        if (row_addr_q[saved_addr_q[9:8]] == saved_addr_q[22:10]) begin
                            // Row is already open
                            if (saved_rw_q)
                                state_d = WRITE;
                            else
                                state_d = READ;
                        end else begin
                            // A different row in the bank is open
                            state_d = PRECHARGE; // precharge open row
                            precharge_bank_d = {1'b0, saved_addr_q[9:8]};
                            next_state_d = ACTIVATE; // open current row
                        end
                    end else begin
                        // no rows open
                        state_d = ACTIVATE; // open the row
                    end
                end
            end

            ///// REFRESH /////
            REFRESH: begin
                cmd_d = CMD_REFRESH;
                state_d = WAIT;

                // Jiin
                // delay_ctr_d = 13'd6; // gotta wait 7 clocks (66ns)
                delay_ctr_d = tREF;

                next_state_d = IDLE;
            end

            ///// ACTIVATE /////
            ACTIVATE: begin
                cmd_d = CMD_ACTIVE;
                a_d = addr_q[22:10];
                ba_d = addr_q[9:8];

                // Jiin:
                //      delay_ctr_d = 13'd0;
                delay_ctr_d = tACT;

                state_d = WAIT;

                if (rw_op_q)
                    next_state_d = WRITE;
                else
                    next_state_d = READ;

                row_open_d[addr_q[9:8]] = 1'b1; // row is now open
                row_addr_d[addr_q[9:8]] = addr_q[22:10];
            end

            ///// READ /////
            READ: begin
                cmd_d = CMD_READ;
                // a_d = {2'b0, 1'b0, addr_q[7:0], 2'b0};
                a_d = {7'b0, addr_q[7:2]};
                ba_d = addr_q[9:8];
                /////state_d = WAIT;
                state_d = PREFETCH; // Modified

                // Jiin
                // delay_ctr_d = 13'd2; // wait for the data to show up
                delay_ctr_d = tCASL; 

                next_state_d = READ_RES;

            end
            READ_RES: begin
                data_d = dqi_q; // data_d by pass
                out_valid_d = 1'b1;
                /////state_d = IDLE;
                //////////////////////////// (Added by us) ////////////////////////////
                next_prefetch_counter = prefetch_counter + 1;
                if (prefetch_counter == 2'd3) begin
                    state_d = IDLE;
                end
                else begin
                    state_d = READ_RES;
                end
                ///////////////////////////////////////////////////////////////////////
            end
            //////////////////////////// (Added by us) ////////////////////////////
            PREFETCH: begin
                
                cmd_d = CMD_READ;
                if (prefetch_step) begin
                    a_d = a_q + 4; //16;
                end
                else begin
                    a_d = a_q + 1; //4;
                end

                ba_d = ba_q;
                
                if (prefetch_counter == 2'd2) begin
                    state_d = READ_RES;
                    next_prefetch_counter = 0;
                end
                else begin
                    state_d = PREFETCH;
                    next_prefetch_counter = prefetch_counter + 1;
                end
            end
            ///////////////////////////////////////////////////////////////////////

            ///// WRITE /////
            WRITE: begin
                cmd_d = CMD_WRITE;

                dq_d = data_q;
                // data_d = data_q;
                dq_en_d = 1'b1; // enable out bus
                // a_d = {2'b0, 1'b0, addr_q[7:0], 2'b00};
                a_d = {7'b0, addr_q[7:2]};
                ba_d = addr_q[9:8];

                state_d = IDLE;
            end

            ///// PRECHARGE /////
            PRECHARGE: begin
                cmd_d = CMD_PRECHARGE;
                a_d[10] = precharge_bank_q[2]; // all banks
                ba_d = precharge_bank_q[1:0];
                state_d = WAIT;

                // Jiin
                // delay_ctr_d = 13'd0;
                delay_ctr_d = tPRE;

                if (precharge_bank_q[2]) begin
                    row_open_d = 4'b0000; // closed all rows
                end else begin
                    row_open_d[precharge_bank_q[1:0]] = 1'b0; // closed one row
                end
            end

            default: state_d = INIT;
        endcase
    end

    always @(posedge clk) begin
        if(rst) begin
            cle_q <= 1'b0;
            dq_en_q <= 1'b0;
            state_q <= INIT;
            ready_q <= 1'b0;
        end else begin
            cle_q <= cle_d;
            dq_en_q <= dq_en_d;
            state_q <= state_d;
            ready_q <= ready_d;
        end

        saved_rw_q <= saved_rw_d;
        saved_data_q <= saved_data_d;
        saved_addr_q <= saved_addr_d;

        cmd_q <= cmd_d;
        dqm_q <= dqm_d;
        ba_q <= ba_d;
        a_q <= a_d;
        dq_q <= dq_d;
        dqi_q <= dqi_d;

        next_state_q <= next_state_d;
        refresh_flag_q <= refresh_flag_d;
        refresh_ctr_q <= refresh_ctr_d;
        data_q <= data_d;
        addr_q <= addr_d;
        out_valid_q <= out_valid_d;
        row_open_q <= row_open_d;
        for (i = 0; i < 4; i = i + 1)
            row_addr_q[i] <= row_addr_d[i];
        precharge_bank_q <= precharge_bank_d;
        rw_op_q <= rw_op_d;
        delay_ctr_q <= delay_ctr_d;
        //////////////////////////// (Added by us) ////////////////////////////
        prefetch_counter <= next_prefetch_counter;
        ///////////////////////////////////////////////////////////////////////
    end

endmodule