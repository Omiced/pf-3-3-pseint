SubProceso resultado <- Suma (a, b)
	
	Definir resultado Como entero;
	resultado <- a + b;
	
	Imprimir "La suma de los numeros es igual a ", resultado;
	
FinSubProceso
SubProceso  resultado <- Resta(a, b)
	
	Definir resultado Como entero;
	resultado <- a - b;
	
	Imprimir "La resta de los numeros es igual a ", resultado;
	
FinSubProceso
SubProceso  resultado <- Multiplicacion(a, b)
	
	Definir resultado Como entero;
	resultado <- a * b;
	
	Imprimir "La multiplicacion de los numeros es igual a ", resultado;
	
FinSubProceso
SubProceso  resultado <- Division(a, b)
	
	Definir resultado Como Real;
	resultado <- a / b;
		
	Imprimir "La division de los numeros es igual a ", resultado;
	
FinSubProceso

Algoritmo Calculadora
	Definir n1,n2, opc, resultado Como Entero;
	
	Escribir "Hola bienvenido, a la calculadora";
	Escribir "Escribe el primer numero para realizar tu operacion";
	Leer n1;
	Escribir "Escribe el segundo numero";
	Leer n2;
	Escribir "Escribe el numero de la opcion que quieres realizar";
	
	Repetir 
		Escribir "1.Suma";
		Escribir "2.Resta";
		Escribir "3.Multiplicacion";
		Escribir "4.Division";
		Escribir "5.SALIR";
		leer opc;
		
		Segun opc Hacer
			1:
				Escribir Suma(n1, n2);
				
			2:
				Escribir Resta(n1, n2);
				
			3:  Escribir Multiplicacion(n1, n2);
				
				
			4:   Escribir Division(n1, n2);
				
			5:  
				Escribir "Adios, saliste de calculadora";
				
			De Otro Modo:
				Escribir "La opcion no es validad";
		Fin Segun
				
				
	Hasta Que opc = 5;
	

	
	
	
FinAlgoritmo
