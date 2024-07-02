1 screen1,2:width32:definta-z:clear1000,&he000
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
20 a=a1
21 fori=0to3
22 locatex(i),y(i):if(aanddi(i))=0thenprintchr$(i+205); elseprintchr$(219);
23 next i
24 locate22,11
25 if(aand16)=0thenprint"B"; else printchr$(219)
26 locate24,10
27 if(aand32)=0thenprint"C"; else printchr$(219)
30 a=a2
31 locate20,12
32 if(aand16)=0thenprint"A"; else printchr$(219)
33 locate14,8
34 if(aand32)=0thenprint"START"; else printstring$(5,219)
40 a=a3
41 locate24,8
42 if(aand1)=0thenprint"Z"; else printchr$(219)
43 locate22,9
44 if(aand2)=0thenprint"Y"; else printchr$(219)
45 locate20,10
46 if(aand4)=0thenprint"X"; else printchr$(219)
47 locate14,10
48 if(aand8)=0thenprint"MODE"; else printstring$(4,219)
50 ifstrig(0)then1010
1000 goto 10
1010 _turbo off
