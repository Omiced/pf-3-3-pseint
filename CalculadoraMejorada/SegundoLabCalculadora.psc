Algoritmo SegundoLabCalculadora
	Definir menu, x1, x2, x3 Como Real;
	menu <- 0;
	Repetir
		Escribir '';
		Escribir '----- CALCULADORA (Subprocesos) -----';
		Escribir '1. Sumar';
		Escribir '2. Restar';
		Escribir '3. Multiplicar';
		Escribir '4. Dividir';
		Escribir '5. Salir';
		Escribir 'Elige una opción (1-5):';
		Leer menu;
		Si menu>=1 Y menu<=4 Entonces
			Escribir 'Escribe el primer número:';
			Leer x1;
			Escribir 'Escribe el segundo número:';
			Leer x2;
			Escribir 'Escribe el tercer número:';
			Leer x3;
			// Si la operación es división, validamos divisores
			Si menu=4 Entonces
				Mientras x2=0 O x3=0 Hacer
					Escribir 'ERROR: los divisores no pueden ser cero.';
					Escribir 'Escribe el segundo número (no cero):';
					Leer x2;
					Escribir 'Escribe el tercer número (no cero):';
					Leer x3;
				FinMientras
			FinSi
			Segun menu Hacer
				1:
					sumar(x1,x2,x3);
				2:
					restar(x1,x2,x3);
				3:
					multiplicar(x1,x2,x3);
				4:
					dividir(x1,x2,x3);
			FinSegun
		SiNo
			Si menu<>5 Entonces
				Escribir 'Opción inválida. Elige 1..5.';
			FinSi
		FinSi
	Hasta Que menu<-5
	Escribir 'Gracias por usar la calculadora. Adiós.';
FinAlgoritmo

Funcion sumar(num1,num2,num3)
	Definir total Como Real;
	total <- num1+num2+num3;
	Escribir 'El resultado de la suma es ', total;
FinFuncion

Funcion restar(num1,num2,num3)
	Definir total Como Real;
	total <- num1-num2-num3;
	Escribir 'El resultado de la resta es ', total;
FinFuncion

Funcion multiplicar(num1,num2,num3)
	Definir total Como Real;
	total <- num1*num2*num3;
	Escribir 'El resultado de la multiplicación es ', total;
FinFuncion

Funcion dividir(num1,num2,num3)
	Definir total Como Real;
	// validación extra por seguridad (aunque ya validamos en el main)
	Si num2=0 O num3=0 Entonces
		Escribir 'ERROR: intento de dividir entre cero.';
	SiNo
		total <- (num1/num2)/num3;
		Escribir 'El resultado de la división es ', total;
	FinSi
FinFuncion
