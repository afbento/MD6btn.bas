1 screen1,2:width32:definta-z
2 _turbo on
3 dim x(3),y(3),di(3)
4 data 10,12,2, 10,8,1, 12,10,8, 8,10,4
5 fori=0to3:read x(i),y(i),di(i):next i
10 out&ha0,15:out&ha1,&h8f:out&ha0,14:a1=inp(&ha2)
11 out&ha0,15:out&ha1,&h9f:out&ha0,14:a2=inp(&ha2)
12 out&ha0,15:out&ha1,&h8f
13 out&ha0,15:out&ha1,&h9f
14 out&ha0,15:out&ha1,&h8f
15 out&ha0,15:out&ha1,&h9f
16 out&ha0,15:out&ha1,&h8f
17 out&ha0,14:a3=inp(&ha2)
18 out&ha0,15:out&ha1,&h9f
19 out&ha0,15:out&ha1,&h8f
20 fori=0to3
21 locatex(i),y(i):if(a1anddi(i))=0thenprintchr$(i+205); elseprintchr$(219);
22 next i
23 locate22,11
24 if(a1and16)=0thenprint"B"; else printchr$(219)
25 locate24,10
26 if(a1and32)=0thenprint"C"; else printchr$(219)
30 locate20,12
31 if(a2and16)=0thenprint"A"; else printchr$(219)
32 locate14,8
33 if(a2and32)=0thenprint"START"; else printstring$(5,219)
40 locate24,8
41 if(a3and1)=0thenprint"Z"; else printchr$(219)
42 locate22,9
43 if(a3and2)=0thenprint"Y"; else printchr$(219)
44 locate20,10
45 if(a3and4)=0thenprint"X"; else printchr$(219)
46 locate14,10
47 if(a3and8)=0thenprint"MODE"; else printstring$(4,219)
50 ifstrig(0)then1010
1000 goto 10
1010 _turbo off
