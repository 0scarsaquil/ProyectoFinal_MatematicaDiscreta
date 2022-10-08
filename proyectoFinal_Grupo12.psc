Algoritmo proyectoFinal_Grupo12
	// Presentaci�n del programa
	Escribir "Bienvenido Usuario"
	Escribir "El siguiente programa le permitir� llevar acabo las distintas operaciones de permutaci�n y combinaci�n.";
	Escribir "Digite el el n�mero de la opci�n que quiera";
	// Men�
	Mientras OM<>3 Hacer
		OM <- 0
		Escribir "1. Permutaci�n";
		Escribir "2. Combinaci�n";
		Escribir "3. Salir";
		Leer OM; // Opciones de Men�
		// Opci�n permutaci�n 
		Si OM=1 Entonces
			OP <- 0
			P <- 0
			n <- 0
			r <- 0
			Mientras OP <> 5 Hacer
			Escribir "Permutaciones";
			Escribir "Digite el el n�mero de la opci�n que quiera";
			Escribir "1. Permutaci�n sin repetici�n.";
			Escribir "2. Permutaci�n con repetici�n.";
			Escribir "3. Permutaciones en subconjuntos divididos.";
			Escribir "4. Permutaciones circulares.";
			Escribir "5. Regresar.";
			leer OP //Opciones de Permutaciones
			// Permutacion sin repetici�n
			si OP = 1 Entonces
				// La funcion para llevar acabo permutaciones sin repeticion es:
				// P(n,r)= n!/(n-r)!
				Escribir "Para darle un resultado, por favor, ingrese los siguientes datos:"
				Escribir "n = Cantidad de elementos"
				Leer n;
				Escribir  "r = Tama�o del arreglo"
				Leer r
				// Declaraci�n de la variable del factorial de n
				Fn <- 1
				// Operaci�n para obtener un factorial
				para i<- 1 Hasta n Con Paso 1 Hacer
					Fn <- Fn*i
				FinPara
				// Resta y factorial
				resta <- n-r;
				// Factorial de la resta
				Fr <- 1;
				para i<- 1 Hasta resta Con Paso 1 Hacer
					Fr <- Fr*i
				FinPara
				// Aplicamos la funci�n de permutaci�n sin repetici�n con los datos que obtenidos
				P <- Fn/Fr;
				// Mostramos el resultado
				Escribir "El resultado es:"
				Escribir "P("  n  ","  r  ") = " P;
				// Consulta de siguiente acci�n
				Oc <- 0
				Escribir "�Desea hacer otra operaci�n de permutaci�n?"
				Escribir "1. Si"
				Escribir "2. Regresar al men�"
				Leer Oc
				Si Oc = 2 Entonces
					OP <- 5
				SiNo
					
				FinSi
			FinSi
			// Permutaci�n con repetici�n
			si OP = 2 Entonces
				// La funcion para llevar acabo permutaciones con repeticion es:
				// P(n,r)= n^r
				Escribir "Para darle un resultado, por favor, ingrese los siguientes datos:"
				Escribir "n = Cantidad de elementos"
				Leer n;
				Escribir  "r = Tama�o del arreglo"
				Leer r
				// Se eleva n a la potencia r para obtener la cantidad de arreglos que esta permutaci�n nos deja
				P <- n^r
				// Mostramos el resultado
				Escribir "El resultado es:"
				Escribir "P("  n  ","  r  ") = " P;
				// Consulta de siguiente acci�n
				Escribir "�Desea hacer otra operaci�n de permutaci�n?"
				Escribir "1. Si"
				Escribir "2. Regresar al men�"
				Leer Oc
				// Esta condici�n finaliza la condici�n permaneciendo en el men� de permutaciones
				Si Oc = 2 Entonces
					OP <- 5
				SiNo
					
				FinSi
			FinSi
			// Permutaci�n en subconjuntos divididos
			si OP = 3 Entonces
				CD <- 0
				SC <- 0
				Escribir  "Para llevar acabo este calculo primero debe ingresar la cantidad de digitos que tiene la cifra"
				leer CD // Cantidad de Digitos
				FCD <- 1 //Declaraci�n de factorial de la cantidad de digitos
				para i<- 1 Hasta CD Con Paso 1 Hacer
					FCD <- FCD*i
				FinPara
				
				Escribir  "Y por �ltimo la cantidad de subconjuntos que contiene la cifra"
				Leer SC // subconjuntos
				
				// multiplicaci�n de los factoriales de los subconjuntos
				MSC <- 1 // Declaraci�n de la variable Multiplicacion de SubConjuntos
				Para i <- 1 Hasta SC Con Paso 1 Hacer
					Escribir "Digitar la cantidad de digitos que contiene el subconjunto " i ":"
					leer D
					//Factorial de la cantidad digitada
					FD<-1
					para x<- 1 Hasta D Con Paso 1 Hacer
						FD <- FD*x
					FinPara
					MSC <- MSC*FD // Multiplicaci�n de subconjuntos
				Fin Para
				// Funcion de Permutacion de subconjuntos 
				// P(n1,n2,n3,nk)= n!/(n1! * n2! * n3! * nk!)
				P <- FCD/MSC
				// Mostrar Resultados
				Escribir "La cantidad de arreglos que esta permutaci�n tiene es: " P
				// Consulta de siguiente acci�n
				Oc <- 0
				Escribir "�Desea hacer otra operaci�n de permutaci�n?"
				Escribir "1. Si"
				Escribir "2. Regresar al men�"
				Leer Oc
				// Esta condici�n finaliza la condici�n permaneciendo en el men� de permutaciones
				Si Oc = 2 Entonces
					OP <- 5
				SiNo
					
				FinSi
			FinSi
			// Permutaci�n circular
			si OP = 4 Entonces
				Escribir "Digitar la cantidad de elementos"
				Leer EC //Elementos cirulares (elementos a ordenar de forma circular)
				// Funcion de Permutacion Circular
				// P^c= (EC-1)!
				R <- EC-1 // Resta de los elementos
				FR <- 1 // Declaraci�n del factorial de la resta
				para i<- 1 Hasta R Con Paso 1 Hacer
					FR <- FR*i
				FinPara
				// Mostrar resultados
			    Escribir "Los elementos se pueden ordenar de " FR " formas"
				// Consulta de siguiente acci�n
				OC <- 0
				Escribir "�Desea hacer otra operaci�n de permutaci�n?"
				Escribir "1. Si"
				Escribir "2. Regresar al men�"
				Leer Oc
				// Esta condici�n finaliza la condici�n permaneciendo en el men� de permutaciones
				Si Oc = 2 Entonces
					OP <- 5
				SiNo
					
				FinSi
			FinSi
			
	    FinMientras
		Fin Si
	
		// Opci�n Combinaci�nes
		Si OM=2 Entonces
			C <- 0
			n <- 0
			r <- 0
			OC <-0
			Mientras OC <> 3 Hacer
				
				Escribir "Combinaciones";
				Escribir "Digite el el n�mero de la opci�n que quiera";
				Escribir "1. Combinaci�n sin repetici�n.";
				Escribir "2. Combinaci�n con repetici�n.";
				Escribir "3. regresar"
				leer OC // Opciones de Combinaciones
				// Combinacion sin repetici�n
				si OC = 1 Entonces
					// Solicitar datos
					Escribir "n = Cantidad de elementos"
					Leer n
					Escribir "r = Tama�o del arreglo"
					Leer r
					//Formula de combinacion sin repetici�n
					// C(n,r)= n!/(n-r)!*r!
					FN <- 1 // Declaraci�n del Factorial de n
					para i<- 1 Hasta n Con Paso 1 Hacer
						FN <- FN*i
					FinPara
					FR <- 1 // Declaraci�n de Factorial de r
					para i<- 1 Hasta r Con Paso 1 Hacer
						FR <- FR*i
					FinPara
					RD <- n-r // Resta de Datos
					FRD <- 1 // Declaraci�n del factorial de la resta
					para i<- 1 Hasta RD Con Paso 1 Hacer
						FRD <- FRD*i
					FinPara
					// Operar combinacion
					C <- FN/(FRD*FR)
					// Mostrar Resultado
					Escribir "El resultado es:"
					Escribir "C(" n "," r ")= " C
					// Consulta de siguiente acci�n
					Oc <- 0
					Escribir "�Desea hacer otra operaci�n de permutaci�n?"
					Escribir "1. Si"
					Escribir "2. Regresar al men�"
					Leer Oc
					// Esta condici�n finaliza la condici�n permaneciendo en el men� de permutaciones
					
					Si Oc = 2 Entonces
						OC <- 3
					SiNo
						
					FinSi
				FinSi
				// Combinaci�n con repetici�n
				si OC = 2 Entonces
					// Solicitar datos
					Escribir "n = Cantidad de elementos"
					Leer n
					Escribir "r = Tama�o del arreglo"
					Leer r
					//Formula de combinacion sin repetici�n
					// C'(n,r)= n+r-1!/((n+r-1)-r)!*r!
					OP1 <- n+r-1
					OP2 <- OP1-r
					FOP1 <- 1 // Declaraci�n del Factorial de n
					para i<- 1 Hasta OP1 Con Paso 1 Hacer
						FOP1 <- FOP1*i
					FinPara
					FOP2 <- 1 // Declaraci�n de Factorial de r
					para i<- 1 Hasta OP2 Con Paso 1 Hacer
						FOP2 <- FOP2*i
					FinPara
					FR <- 1 // Declaraci�n del factorial de r
					para i<- 1 Hasta r Con Paso 1 Hacer
						FR <- FR*i
					FinPara
					// Operar combinacion
					C <- FOP1/(FOP2*FR)
					// Mostrar Resultado
					Escribir "El resultado es:"
					Escribir "C(" n "," r ")= " C
					// Consulta de siguiente acci�n
					Oc <- 0
					Escribir "�Desea hacer otra operaci�n de permutaci�n?"
					Escribir "1. Si"
					Escribir "2. Regresar al men�"
					Leer Oc
					// Esta condici�n finaliza la condici�n permaneciendo en el men� de permutaciones
					
					Si Oc = 2 Entonces
						OC <- 3
					SiNo
						
					FinSi
				FinSi
	    FinMientras
		Fin Si
	Fin Mientras
FinAlgoritmo
