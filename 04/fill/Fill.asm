@24575 //DISPLAY END
D=A
@DISPEND
M=D

(LOOP)
@KBD
D=M
@CLEARINIT
D;JEQ
@DRAWINIT
0;JMP

(DRAWINIT)
@SCREEN
D=A
@i
M=D
(DRAW)
@i
D=M
@DISPEND
D=D-M
@END
D;JGT
@i
A=M
M=-1
@i
M=M+1
@DRAW
0;JMP

(CLEARINIT)
@SCREEN
D=A
@i
M=D
(CLEAR)
@i
D=M
@DISPEND
D=D-M
@END
D;JGT
@i
A=M
M=0
@i
M=M+1
@CLEAR
0;JMP

(END)
@LOOP
0;JMP
