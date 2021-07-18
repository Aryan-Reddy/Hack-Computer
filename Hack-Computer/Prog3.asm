@i
M=1    	//Initiaize i to 1

@sum
M=0    	//Initialize sum to 0

(beginWhile)
	   	//check condition for loop
@i
D=M
@100
D=D-A
		//If condition is not true jump to endWhile
@endWhile
D;JGE
		//Now the body of loop
@i
D=M
@sum
M=D+M  	//sum = sum + i
@i
M=M+1  	//i = i+1
		//Jump back to start of while
@beginWhile
0;JMP
(endWhile)
(END)
@END
0;JMP

