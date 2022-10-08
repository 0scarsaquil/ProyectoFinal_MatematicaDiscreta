Algoritmo proyectoFinal_Grupo12
	// Presentación del programa
	Escribir "Bienvenido Usuario"
	Escribir "El siguiente programa le permitirá llevar acabo las distintas operaciones de permutación y combinación.";
	Escribir "Digite el el número de la opción que quiera";
	// Menú
	Mientras OM<>3 Hacer
		OM <- 0
		Escribir "1. Permutación";
		Escribir "2. Combinación";
		Escribir "3. Salir";
		Leer OM; // Opciones de Menú
		// Opción permutación 
		Si OM=1 Entonces
			OP <- 0
			P <- 0
			n <- 0
			r <- 0
			Mientras OP <> 5 Hacer
			Escribir "Permutaciones";
			Escribir "Digite el el número de la opción que quiera";
			Escribir "1. Permutación sin repetición.";
			Escribir "2. Permutación con repetición.";
			Escribir "3. Permutaciones en subconjuntos divididos.";
			Escribir "4. Permutaciones circulares.";
			Escribir "5. Regresar.";
			leer OP //Opciones de Permutaciones
			// Permutacion sin repetición
			si OP = 1 Entonces
				// La funcion para llevar acabo permutaciones sin repeticion es:
				// P(n,r)= n!/(n-r)!
				Escribir "Para darle un resultado, por favor, ingrese los siguientes datos:"
				Escribir "n = Cantidad de elementos"
				Leer n;
				Escribir  "r = Tamaño del arreglo"
				Leer r
				// Declaración de la variable del factorial de n
				Fn <- 1
				// Operación para obtener un factorial
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
				// Aplicamos la función de permutación sin repetición con los datos que obtenidos
				P <- Fn/Fr;
				// Mostramos el resultado
				Escribir "El resultado es:"
				Escribir "P("  n  ","  r  ") = " P;
				// Consulta de siguiente acción
				Oc <- 0
				Escribir "¿Desea hacer otra operación de permutación?"
				Escribir "1. Si"
				Escribir "2. Regresar al menú"
				Leer Oc
				Si Oc = 2 Entonces
					OP <- 5
				SiNo
					
				FinSi
			FinSi
			// Permutación con repetición
			si OP = 2 Entonces
				// La funcion para llevar acabo permutaciones con repeticion es:
				// P(n,r)= n^r
				Escribir "Para darle un resultado, por favor, ingrese los siguientes datos:"
				Escribir "n = Cantidad de elementos"
				Leer n;
				Escribir  "r = Tamaño del arreglo"
				Leer r
				// Se eleva n a la potencia r para obtener la cantidad de arreglos que esta permutación nos deja
				P <- n^r
				// Mostramos el resultado
				Escribir "El resultado es:"
				Escribir "P("  n  ","  r  ") = " P;
				// Consulta de siguiente acción
				Escribir "¿Desea hacer otra operación de permutación?"
				Escribir "1. Si"
				Escribir "2. Regresar al menú"
				Leer Oc
				// Esta condición finaliza la condición permaneciendo en el menú de permutaciones
				Si Oc = 2 Entonces
					OP <- 5
				SiNo
					
				FinSi
			FinSi
			// Permutación en subconjuntos divididos
			si OP = 3 Entonces
				CD <- 0
				SC <- 0
				Escribir  "Para llevar acabo este calculo primero debe ingresar la cantidad de digitos que tiene la cifra"
				leer CD // Cantidad de Digitos
				FCD <- 1 //Declaración de factorial de la cantidad de digitos
				para i<- 1 Hasta CD Con Paso 1 Hacer
					FCD <- FCD*i
				FinPara
				
				Escribir  "Y por último la cantidad de subconjuntos que contiene la cifra"
				Leer SC // subconjuntos
				
				// multiplicación de los factoriales de los subconjuntos
				MSC <- 1 // Declaración de la variable Multiplicacion de SubConjuntos
				Para i <- 1 Hasta SC Con Paso 1 Hacer
					Escribir "Digitar la cantidad de digitos que contiene el subconjunto " i ":"
					leer D
					//Factorial de la cantidad digitada
					FD<-1
					para x<- 1 Hasta D Con Paso 1 Hacer
						FD <- FD*x
					FinPara
					MSC <- MSC*FD // Multiplicación de subconjuntos
				Fin Para
				// Funcion de Permutacion de subconjuntos 
				// P(n1,n2,n3,nk)= n!/(n1! * n2! * n3! * nk!)
				P <- FCD/MSC
				// Mostrar Resultados
				Escribir "La cantidad de arreglos que esta permutación tiene es: " P
				// Consulta de siguiente acción
				Oc <- 0
				Escribir "¿Desea hacer otra operación de permutación?"
				Escribir "1. Si"
				Escribir "2. Regresar al menú"
				Leer Oc
				// Esta condición finaliza la condición permaneciendo en el menú de permutaciones
				Si Oc = 2 Entonces
					OP <- 5
				SiNo
					
				FinSi
			FinSi
			// Permutación circular
			si OP = 4 Entonces
				Escribir "Digitar la cantidad de elementos"
				Leer EC //Elementos cirulares (elementos a ordenar de forma circular)
				// Funcion de Permutacion Circular
				// P^c= (EC-1)!
				R <- EC-1 // Resta de los elementos
				FR <- 1 // Declaración del factorial de la resta
				para i<- 1 Hasta R Con Paso 1 Hacer
					FR <- FR*i
				FinPara
				// Mostrar resultados
			    Escribir "Los elementos se pueden ordenar de " FR " formas"
				// Consulta de siguiente acción
				OC <- 0
				Escribir "¿Desea hacer otra operación de permutación?"
				Escribir "1. Si"
				Escribir "2. Regresar al menú"
				Leer Oc
				// Esta condición finaliza la condición permaneciendo en el menú de permutaciones
				Si Oc = 2 Entonces
					OP <- 5
				SiNo
					
				FinSi
			FinSi
			
	    FinMientras
		Fin Si
	
		// Opción Combinaciónes
		Si OM=2 Entonces
			C <- 0
			n <- 0
			r <- 0
			OC <-0
			Mientras OC <> 3 Hacer
				
				Escribir "Combinaciones";
				Escribir "Digite el el número de la opción que quiera";
				Escribir "1. Combinación sin repetición.";
				Escribir "2. Combinación con repetición.";
				Escribir "3. regresar"
				leer OC // Opciones de Combinaciones
				// Combinacion sin repetición
				si OC = 1 Entonces
					// Solicitar datos
					Escribir "n = Cantidad de elementos"
					Leer n
					Escribir "r = Tamaño del arreglo"
					Leer r
					//Formula de combinacion sin repetición
					// C(n,r)= n!/(n-r)!*r!
					FN <- 1 // Declaración del Factorial de n
					para i<- 1 Hasta n Con Paso 1 Hacer
						FN <- FN*i
					FinPara
					FR <- 1 // Declaración de Factorial de r
					para i<- 1 Hasta r Con Paso 1 Hacer
						FR <- FR*i
					FinPara
					RD <- n-r // Resta de Datos
					FRD <- 1 // Declaración del factorial de la resta
					para i<- 1 Hasta RD Con Paso 1 Hacer
						FRD <- FRD*i
					FinPara
					// Operar combinacion
					C <- FN/(FRD*FR)
					// Mostrar Resultado
					Escribir "El resultado es:"
					Escribir "C(" n "," r ")= " C
					// Consulta de siguiente acción
					Oc <- 0
					Escribir "¿Desea hacer otra operación de permutación?"
					Escribir "1. Si"
					Escribir "2. Regresar al menú"
					Leer Oc
					// Esta condición finaliza la condición permaneciendo en el menú de permutaciones
					
					Si Oc = 2 Entonces
						OC <- 3
					SiNo
						
					FinSi
				FinSi
				// Combinación con repetición
				si OC = 2 Entonces
					// Solicitar datos
					Escribir "n = Cantidad de elementos"
					Leer n
					Escribir "r = Tamaño del arreglo"
					Leer r
					//Formula de combinacion sin repetición
					// C'(n,r)= n+r-1!/((n+r-1)-r)!*r!
					OP1 <- n+r-1
					OP2 <- OP1-r
					FOP1 <- 1 // Declaración del Factorial de n
					para i<- 1 Hasta OP1 Con Paso 1 Hacer
						FOP1 <- FOP1*i
					FinPara
					FOP2 <- 1 // Declaración de Factorial de r
					para i<- 1 Hasta OP2 Con Paso 1 Hacer
						FOP2 <- FOP2*i
					FinPara
					FR <- 1 // Declaración del factorial de r
					para i<- 1 Hasta r Con Paso 1 Hacer
						FR <- FR*i
					FinPara
					// Operar combinacion
					C <- FOP1/(FOP2*FR)
					// Mostrar Resultado
					Escribir "El resultado es:"
					Escribir "C(" n "," r ")= " C
					// Consulta de siguiente acción
					Oc <- 0
					Escribir "¿Desea hacer otra operación de permutación?"
					Escribir "1. Si"
					Escribir "2. Regresar al menú"
					Leer Oc
					// Esta condición finaliza la condición permaneciendo en el menú de permutaciones
					
					Si Oc = 2 Entonces
						OC <- 3
					SiNo
						
					FinSi
				FinSi
	    FinMientras
		Fin Si
	Fin Mientras
FinAlgoritmo
