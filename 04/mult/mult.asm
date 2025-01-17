// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

	i = R1
     while i > 0 
 		 R2 += R0
  		 i -= 1
		return R2

    @R1
    D = M		
    @i			
    M = D

    @product		
			
    @i
    D = M

    @END		
    D;JEQ

    @R0
    D = M

    @product		
    M = D + M

    @i			
    M = M - 1	

    @LOOP		
    0;JMP


    @product		
    D = M
  
    @R2			
    M = D

    @END
    0;JMP 		