// count=10;
//acum=0;
//while (cont>0) {
  //acum =acum+cont;
  //cont=cont-1;
  //}

@10
D=A
@cont
M=D
@acum
M=0
(while)
@cont
D=M
@acum
M=M+D
@cont
M=M-1
D=M
@while
D; JGT
(END)
@END
0; JMP





