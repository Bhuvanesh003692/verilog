`timescale 1ns/1ps
module tb_2_in_mux;
    reg a;
    reg b;
    reg sel;
    wire out;
    
    mux_2in uut (.a(a), .b(b), .sel(sel), .out(out));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb_2_in_mux);
    end
    integer pass=0;
    integer fail=0;
    task check;
        input t_a, t_b, t_sel, exp_out;
        begin
            a=t_a; b=t_b; sel=t_sel;
            #10;
            if (out === exp_out) 
            begin
                $display("Pass | a=%b b=%b sel=%b | out=%b",t_a,t_b,t_sel,out);
                pass=pass+1;
            end
            else begin
                $display("Fail | a=%b b=%b sel=%b | out=%b |exp_out=%b", t_a, t_b, t_sel, out, exp_out);
                fail=fail+1;
            end
        end
    endtask
    initial begin
        check(0,0,0,0);
        check(0,0,1,0);
        check(0,1,0,0);
        check(0,1,1,1);
        check(1,0,0,1);
        check(1,0,1,0);
        check(1,1,0,1);
        check(1,1,1,1);
        $display("Test summary: %d Passed | %d Failed", pass, fail);
        $finish;
    end
endmodule