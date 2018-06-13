module lab4_3B
(
    input  [WIDTH-1:0] A,
    input  [WIDTH-1:0] B,
    output [3*WIDTH-1:0] F,
    output [2:0] S
);
    parameter  WIDTH = 3;
    integer i=0;
    lab4_3A lab4_3A1(A[0],B[0],F[2:0]); 
    lab4_3A lab4_3A2(A[1],B[1],F[5:3]);  
    lab4_3A lab4_3A3(A[2],B[2],F[8:6]);  
    assign S[2] = F[8] | (F[7]&F[5]) | (F[7]&F[4]&F[2]);
    assign S[1] = F[7] & F[4] & F[1]; 
    assign S[0] = ~(S[2]|S[1]);
endmodule


