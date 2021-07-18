@a
D=M
@b
D=D-M
//dRegister has a-b value
@thenpart
D;JGT  		//Jumps to then part if condition is true
(elsepart)
@c		
M=-D
@endif		
0;JMP 		//Jumps to end of if
(thenpart)
@c
M=D
(endif)		//endif
(END)
@END
0;JMP