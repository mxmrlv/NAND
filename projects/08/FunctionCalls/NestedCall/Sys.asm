@256
D=A
@SP
M=D
@Sys.init1_return
D=A
@SP
A=M
M=D
@0
M=M+1
@LCL
D=M
@SP
A=M
M=D
@0
M=M+1
@ARG
D=M
@SP
A=M
M=D
@0
M=M+1
@THIS
D=M
@SP
A=M
M=D
@0
M=M+1
@THAT
D=M
@SP
A=M
M=D
@0
M=M+1
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0; JMP
(Sys.init1_return)
(Sys.init)
D=0
@Sys.main2_return
D=A
@SP
A=M
M=D
@0
M=M+1
@LCL
D=M
@SP
A=M
M=D
@0
M=M+1
@ARG
D=M
@SP
A=M
M=D
@0
M=M+1
@THIS
D=M
@SP
A=M
M=D
@0
M=M+1
@THAT
D=M
@SP
A=M
M=D
@0
M=M+1
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.main
0; JMP
(Sys.main2_return)
@SP
M=M-1
A=M
D=M
@5
A=A+1

M=D
(Sys_Sys.init_LOOP)
@Sys_Sys.init_LOOP
0; JMP
(Sys.main)
D=0
@123

D=A
@SP
A=M
M=D
@0
M=M+1
@Sys.add123_return
D=A
@SP
A=M
M=D
@0
M=M+1
@LCL
D=M
@SP
A=M
M=D
@0
M=M+1
@ARG
D=M
@SP
A=M
M=D
@0
M=M+1
@THIS
D=M
@SP
A=M
M=D
@0
M=M+1
@THAT
D=M
@SP
A=M
M=D
@0
M=M+1
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.add12
0; JMP
(Sys.add123_return)
@SP
M=M-1
A=M
D=M
@5

M=D
@246

D=A
@SP
A=M
M=D
@0
M=M+1
@LCL
D=M
@R13
M=D
@R13
D=M
@5
D=D-A
A=D
D=M
@R14
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M
@SP
M=D+1
@R13
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@R13
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@R13
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@R13
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@R14
A=M
0; JMP
(Sys.add12)
D=0
@SP
A=M
M=D
@0
M=M+1
@SP
A=M
M=D
@0
M=M+1
@SP
A=M
M=D
@0
M=M+1
@ARG
A=M

D=M
@SP
A=M
M=D
@0
M=M+1
@12

D=A
@SP
A=M
M=D
@0
M=M+1
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M+D
@SP
A=M
M=D
@0
M=M+1
@LCL
D=M
@R13
M=D
@R13
D=M
@5
D=D-A
A=D
D=M
@R14
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M
@SP
M=D+1
@R13
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@R13
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@R13
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@R13
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@R14
A=M
0; JMP