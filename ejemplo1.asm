// @ intruccion tipo A, Registro A, funciona como puntero
//@11 //  apunta a direccion 11 de la RAM
//M=1 //   la direccion 11 ahora contiene un 1 RAM[11]=1
//D=1   // D es 1
//D=D+1 // D (1) + 1 D=2

//@1954  // A=1954
//D=A  // D)1954
//@23  // A=23
//D=D+A  //23+1954

//RAM[100]<--RAM[200]
//@788
//D=A
//@200
//M=D
//@200 // A=200
//D=M // D=RAM[200]
//@100 //A=100
//M=D // RAM[100] 

// RAM[3]<--RAM[3]-15  RAM[3] significa lo que esta en 3
//@3
//M=100
//@15
//D=A
//@3
//M=M-D

// RAM[3]<--RAM[4]+1
//@4
//D=M
//@3
//M=D+1
//o
//@4
//D=M+1
//@3
//M=D

//RAM[2]=RAM[0]+RAM[1]+17
//@0
//D=M
//@1
//D=D+M
//@17
//D=D+A
//@2
//M=D

//label, etiqueta
//(END)  //final
//@END  //direccion del final
//0;JMP //Bucle incondicional en final

//if (D=0) goto 300 si D=0 ir a 300
//@300
//D;JEQ

//if (RAM[3]<100) got 12
//@100
//D=A
//@3
//D=M-D
//@12
//D;JLT

// R0 ... R15 Registros  0 ... 15
// 16 --- 16383 Variables

//@contador
//M=1

//punteros

// en R5 guardamos la posicion de memoria 200, 
//RAM[R5]<--  -1
//@200
//D=A   //D=200
//@R5    
//M=D   //M=200
//@R5
//A=M   //A=200  similar a usar @RAM[R5]
//M=-1  //RAM[200]=-1
// la direccion era el contenido de R5, funcionaba como puntero 


@16384
D=A
@pantalla
M=D

(LOOP)
  @pantalla
  A=M
  M=-1
  @pantalla
  M=M+1
  @cont
  MD=M-1
  @LOOP
  D;JGT

(END)
  @END
  0;JMP



