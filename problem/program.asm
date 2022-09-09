// COLOCA AQUÍ TU NOMBRE COMPLETO
// COLOCA AQUÍ TU ID
// COLOCA AQUÍ TU CORREO ELECTRÓNICO

(INICIO) 
 @KBD
 D=M
 @84
 D=D-A
 @SETREC //salto a realizar el rectangulo con estos parametros
 D;JEQ
 
 @KBD
 D=M
 @67
 D=D-A 
 @SETCL
 D;JEQ
 
 
 @INICIO
 0;JMP
 
 (SETREC)
 @16400 //16384 + (128*32)
 D=A
 @coord //variable donde inicia el dibujo
 M=D 
 @25 //candidad de registros a pintar
 D=A
 @cont //contador filas pantalla
 M=D
 @32
 D=A 
 @salto
 M=D
 @pscreen
 D=-1
 M=D
 @RECT
 0;JMP
 
(SETCL)
 @16384 //16384 + (128*32)
 D=A
 @coord //variable donde inicia el dibujo
 M=D 
 @8192 //candidad de registros a pintar
 D=A
 @cont //contador filas pantalla
 M=D
 @1
 D=A 
 @salto
 M=D
 @pscreen
 D=1
 M=D
 @RECT
 0;JMP
 
(RECT)
 @coord //16384 + (128*32)
 D=M
 @pscreen
 M=D //memoria donde inicia la pantalla
 
(PAINT)
 @cont //D=cont
 D=M 
 
 @END
 D;JEQ //if cont = 0 goto END
 
 //@256 Pixeles que se van a pintar bits
 //D=A
 @pscreen
 //A=D
 M=D 
 M=M-1 //Pinto de negro el registro inicial
 
 @cont //cont = cont-1
 M=M-1
 
 @salto
 D=M
 
 @pscreen
 M=M+D //M+D
 
 @PAINT
 0;JMP
 
(END)
 @INICIO
 0;JMP