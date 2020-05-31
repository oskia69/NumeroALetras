Algoritmo Numero_letras
//Introducimos un valor a la letra "N"
		escribir "Introduce un nunero";
		leer n;
		largo=Longitud(n);	
		numer=ConvertirANumero(n)
		dimension num[(largo)];
		para x=largo-1 hasta 0 con paso -1
			div=10^x;
			num[x]=trunc(numer/div);		
			numer=(numer%div);
		FinPara
		segun largo
			1:Unidades(num,sufijo)
			2:Decenas(num)
			3:Centenas(num)
			4:
				Sufijo = " Mil "
				Unidades(num,sufijo)
				sufijo=""
				Centenas(num)
		FinSegun
	
FinAlgoritmo

Funcion Unidades (num,sufijo)
	Mensaje=""
	x=3
	si sufijo=""
		x=0
	sino 
		
	FinSi
	Segun num(x) Hacer
		1:si sufijo="" 
			mensaje= "uno "
		FinSi
		2:
			mensaje= "dos " 
		3:
			mensaje= "tres "
		4:
			mensaje= "cuatro "
		5:
			mensaje="cinco "
		6:
			mensaje= "seis "
		7:
			mensaje="siete "
		8:
			mensaje= "ocho "
		9:
			mensaje= "nueve "
	Fin Segun
	escribir sin saltar mensaje sufijo
	
	
	
finFuncion
funcion Decenas (num)
	Segun num[1] 
		1: 	si  num[0]=0
				escribir"Diez"
			SiNo
				si num[0]<6
					segun num[0]
						1:
							escribir sin saltar " Once "
						2:
							escribir sin saltar " Doce "
						3:
							escribir sin saltar " Trece "	
						4:
							escribir sin saltar " Catorce "	
						5:
							escribir sin saltar " Quince "
					FinSegun
					num[0]=0
				SiNo
					escribir sin saltar " Diez y "
				FinSi
			FinSi
			
		2:
			si num[0]=0
				escribir sin saltar " Veinte "
			SiNo
				escribir sin saltar " Veinti"
			FinSi
		3:
			escribir sin saltar " Treinta "
		4:
			escribir sin saltar " Cuarenta "
		5:
			escribir sin saltar " Cinquenta "
		6:
			escribir sin saltar " Sesenta "
		7:
			escribir sin saltar " Setenta "
		8:
			escribir sin saltar " Ochenta "
		9:
			escribir sin saltar " Noventa "
	Fin Segun
	si num[1]>2 y num[0]>=0
		escribir sin saltar " y "
	FinSi
	unidades(num,sufijo)
Fin Funcion

funcion Centenas (num)
	segun num[2] hacer 
		0:
		1: 
			si num[1]=0 y num[0]=0
				escribir sin saltar " Cien "
			SiNo
				escribir sin saltar " Ciento "
			FinSi
		2: 
			escribir sin saltar " Doscientos "
		3: 
			escribir sin saltar " Trescientos "
		4: 
			escribir sin saltar " Cuatrocientos "
		5: 
			escribir sin saltar " Quinientos "
		6: 
			escribir sin saltar " Seicientos "
		7: 
			escribir sin saltar " Setecientos "
		8: 
			escribir sin saltar " Ochocientos "
		9: 
escribir sin saltar " Nuevecientos "
	FinSegun
	Decenas(num)
FinFuncion
