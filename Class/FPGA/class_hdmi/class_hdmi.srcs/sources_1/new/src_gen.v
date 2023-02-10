`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/20 17:12:16
// Design Name: 
// Module Name: src_gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module src_gen(
    input clk,
    output reg vs,hs,de,
    output reg [7:0] rgb_r,rgb_g,rgb_b
    );

    parameter H_ACTIVE = 16'd1920;
    parameter H_FP     = 16'd88;
    parameter H_SYNC   = 16'd44;
    parameter H_BP     = 16'd148; 
    parameter V_ACTIVE = 16'd1080;
    parameter V_FP     = 16'd4;
    parameter V_SYNC   = 16'd5;
    parameter V_BP     = 16'd36;
    parameter H_TOTAL  = H_ACTIVE + H_FP + H_SYNC + H_BP;
    parameter V_TOTAL  = V_ACTIVE + V_FP + V_SYNC + V_BP;

    parameter WHITE_R = 8'hff;
    parameter WHITE_G = 8'hff;
    parameter WHITE_B = 8'hff;
    
    parameter YELLOW_R = 8'hff;
    parameter YELLOW_G = 8'hff;
    parameter YELLOW_B = 8'h00;
    
    parameter CYAN_R = 8'h00;
    parameter CYAN_G = 8'hff;
    parameter CYAN_B = 8'hff;
    
    parameter GREEN_R = 8'h00;
    parameter GREEN_G = 8'hff;
    parameter GREEN_B = 8'h00;
    
    parameter MAGENTA_R = 8'hff;
    parameter MAGENTA_G = 8'h00;
    parameter MAGENTA_B = 8'hff;
    
    parameter RED_R = 8'hff;
    parameter RED_G = 8'h00;
    parameter RED_B = 8'h00;
    
    parameter BLUE_R = 8'h00;
    parameter BLUE_G = 8'h00;
    parameter BLUE_B = 8'hff;
    
    parameter BLACK_R = 8'h00;
    parameter BLACK_G = 8'h00;
    parameter BLACK_B = 8'h00;
    
    parameter WIDTH = 4'd1;
    
    reg[11:0] h_cnt;
    always@(posedge clk)
    begin
        if(h_cnt == H_TOTAL - 1)
            h_cnt <= 0;
        else
            h_cnt <= h_cnt + 1;
    end
    
    always@(posedge clk)
    begin
        if(h_cnt == H_FP - 1)
            hs <= 1'b1;
        else if(h_cnt == H_FP + H_SYNC - 1)
            hs <= 1'b0;
        else
            hs <= hs;
    end
    
    reg[11:0] v_cnt;
    always@(posedge clk)
    begin
        if(h_cnt == H_FP  - 1)
            if(v_cnt == V_TOTAL - 1)
               v_cnt <= 0;
            else
                v_cnt <= v_cnt + 1;
        else
            v_cnt <= v_cnt;
    end
    
    always@(posedge clk)
    begin
        if((v_cnt == V_FP - 1) && (h_cnt == H_FP - 1))
            vs <= 1'b1;
        else if((v_cnt == V_FP + V_SYNC - 1) && (h_cnt == H_FP - 1))
            vs <= 1'b0;    
        else
           vs <= vs;
    end 
        
    reg h_active;
    reg v_active;
    always@(posedge clk)
    begin
        if(h_cnt == H_FP + H_SYNC + H_BP - 1)
            h_active <= 1'b1;
        else if(h_cnt == H_TOTAL - 1)
            h_active <= 1'b0;
        else
            h_active <= h_active;
    end
        
    always@(posedge clk)
    begin
        if((v_cnt == V_FP + V_SYNC + V_BP - 1) && (h_cnt == H_FP - 1))
            v_active <= 1'b1;
        else if((v_cnt == V_TOTAL - 1) && (h_cnt == H_FP - 1))
            v_active <= 1'b0;    
        else
            v_active <= v_active;
    end
        
    always@(posedge clk)
        de <= h_active & v_active;
    
    // Image output
    
    /* 1. Solid color
    always@(posedge clk)
            begin
        //        rgb_r <= 8'hff;
        //        rgb_g <= 8'hff;
        //        rgb_b <= 8'hff;
                rgb_r <= 8'hff;
                rgb_g <= 8'h00;
                rgb_b <= 8'h00;
            end
    */
    
    /* 2. Color stripe
    always@(posedge clk)
    begin
        if(h_cnt>H_FP+H_SYNC+H_BP-1 && h_cnt<H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*1)
        begin
            rgb_r <= RED_R;
            rgb_g <= RED_G;
            rgb_b <= RED_B;
        end
        else if(h_cnt>H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*1 && h_cnt<H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*2)
        begin
            rgb_r <= YELLOW_R;
            rgb_g <= YELLOW_G;
            rgb_b <= YELLOW_B;
        end
        else if(h_cnt>H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*2 && h_cnt<H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*3)
        begin
            rgb_r <= CYAN_R;
            rgb_g <= CYAN_G;
            rgb_b <= CYAN_B;
        end
        else if(h_cnt>H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*3 && h_cnt<H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*4)
        begin
            rgb_r <= GREEN_R;
            rgb_g <= GREEN_G;
            rgb_b <= GREEN_B;
        end
        else if(h_cnt>H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*4 && h_cnt<H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*5)
        begin
            rgb_r <= MAGENTA_R;
            rgb_g <= MAGENTA_G;
            rgb_b <= MAGENTA_B;
        end
        else if(h_cnt>H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*5 && h_cnt<H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*6)
        begin
            rgb_r <= WHITE_R;
            rgb_g <=WHITE_G;
            rgb_b <= WHITE_B;
        end
        else if(h_cnt>H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*6 && h_cnt<H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*7)
        begin
            rgb_r <= BLUE_R;
            rgb_g <= BLUE_G;
            rgb_b <= BLUE_B;
        end
        else if(h_cnt>H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*7 && h_cnt<H_FP+H_SYNC+H_BP-1+(H_ACTIVE/8)*8)
        begin
            rgb_r <= BLACK_R;
            rgb_g <= BLACK_G;
            rgb_b <= BLACK_B;
        end
    end
    */
    
    // 3. Dynamic fringe
    reg [11:0] frame_h_cnt;
    always@(posedge vs)
    begin
        if(frame_h_cnt == 1920/10)
            frame_h_cnt <= 0;
        else
            frame_h_cnt <= frame_h_cnt+1;
    end
    
    reg [11:0] frame_v_cnt;
    always@(posedge vs)
    begin
        if(frame_v_cnt == 1080*10)
            frame_v_cnt <= 0;
        else
            frame_v_cnt <= frame_v_cnt+1;
    end
    
    reg [11:0] frame_s_cnt;
    always@(posedge vs)
    begin
        if(frame_s_cnt == 1920 + 1080)
            frame_s_cnt <= 0;
        else
            frame_s_cnt <= frame_s_cnt+1;
    end
    
    always@(posedge clk)
    begin
        if(h_cnt>H_FP+H_SYNC+H_BP-1+frame_h_cnt*10 && h_cnt<=H_FP+H_SYNC+H_BP-1+WIDTH+frame_h_cnt*10)
        begin
            rgb_r <= WHITE_R;
            rgb_g <= WHITE_G;
            rgb_b <= WHITE_B;
        end
        else if(v_cnt>V_FP+V_SYNC+V_BP-1+frame_v_cnt/10 && v_cnt<=V_FP+V_SYNC+V_BP-1+WIDTH+frame_v_cnt/10)
        begin
           rgb_r <= WHITE_R;
           rgb_g <= WHITE_G;
           rgb_b <= WHITE_B;
        end
        else
        begin
            rgb_r <= BLACK_R;
            rgb_g <= BLACK_G;
            rgb_b <= BLACK_B;
        end
        if(h_cnt-(H_FP+H_SYNC+H_BP-1)-frame_s_cnt+1080==v_cnt-(V_FP+V_SYNC+V_BP-1))
        begin
            rgb_r <= WHITE_R;
            rgb_g <= WHITE_G;
            rgb_b <= WHITE_B;
        end
    end

endmodule