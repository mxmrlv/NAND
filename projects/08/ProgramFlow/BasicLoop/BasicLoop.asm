@0

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
@LCL
A=M

M=D
(BasicLoop_first_LOOP_START)
@ARG
A=M

D=M
@SP
A=M
M=D
@0
M=M+1
@LCL
A=M

D=M
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
@SP
M=M-1
A=M
D=M
@LCL
A=M

M=D
@ARG
A=M

D=M
@SP
A=M
M=D
@0
M=M+1
@1

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
D=M-D
@SP
A=M
M=D
@0
M=M+1
@SP
M=M-1
A=M
D=M
@ARG
A=M

M=D
@ARG
A=M

D=M
@SP
A=M
M=D
@0
M=M+1
@SP
M=M-1
A=M
D=M
@BasicLoop_first_LOOP_START
D; JNE
@LCL
A=M

D=M
@SP
A=M
M=D
@0
M=M+1