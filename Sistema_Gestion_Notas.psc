Algoritmo Sistema_Gestion_Notas
	
	// CONSTANTE
	Definir NOTA_MINIMA Como Real
	NOTA_MINIMA <- 3.0//NOTA MINIMA 3.0
	
	// DEFINIR VARIABLES Y DIMENSIONAR MATRICES
	Definir notas Como Real
	Dimensionar notas[4,3]//MATRIZ QUE TIENE LAS NOTAS DE 4 ESTUDIANTES Y 3 MATERIAS, [FILA,COLUMNA]
	
	Definir promedios Como Real
	Dimensionar promedios[4]//VECTOR QUE GUARDA EL PROMEDIO DEL ESTUDIANTE, 1 POR CADA ESTUDIANTE
	
	Definir estados Como Entero
	Dimensionar estados[4]//VECTOR QUE GUARDA EL ESTADO DEL ESTUDIANTE, APROBO O REPROBO, 1 POR CADA ESTUDIANTE
	
	Definir i Como Entero//VARIABLE PARA CICLOS
	Definir prom Como Real//VARIABLE DEL PROMEDIO
	
	// NOMBRAR LAS FUNCIONES
	IngresarNotas(notas)
	Para i <- 1 Hasta 4
		prom <- CalcularPromedio(notas, i)//CALCULA EL PROMEDIO DEL ESTUDIANTE, i
		promedios[i] <- prom//GUARDA EL PROMEDIO
		estados[i] <- DeterminarEstado(prom, NOTA_MINIMA)//GUARDA SI APROBO O REPROBO
	FinPara
	  GenerarReporte(promedios, estados)
	FinAlgoritmo
	
	// FUNCIONES - SUBPROCESOS
	Funcion IngresarNotas(notas Por Referencia)//HACE QUE EL USUARIO INTRODUZCA LAS NOTAS DE 4 ESTUDIANTES EN 3 MATERIAS
		Definir nota Como Real
		Escribir "INGRESO DE NOTAS"
		Para i <- 1 Hasta 4//RECORRE CADA ESTUDIANTE
			Escribir ""
			Escribir "Estudiante #", i  
			Para j <- 1 Hasta 3//RECORRE CADA MATERIA
				Repetir//SE VALIDA PARA QUE LA NOTA ESTE ENTRE 0 Y 5
					Escribir "  Ingrese nota de la asignatura ", j  , " (0 a 5): "
					Leer nota
				Hasta Que nota >= 0 Y nota <= 5//
				notas[i,j] <- nota//SE GUARDA LA NOTA EN LA MATRIZ
			FinPara
		FinPara
FinFuncion

Funcion promedio <- CalcularPromedio(notas, fila)//CALCULA EL PROMEDIO DE UN ESTUDIANTE EN ESPECIFICO (INDICADO POR FILA)
	Definir j Como Entero
	Definir suma Como Real
	suma = 0
	Para j <- 1 Hasta 3
	suma = suma + notas[fila,j]//SUMA LAS 3 NOTAS DEL ESTUDIANTE
	FinPara
	promedio = suma / 3//REALIZA EL PROMEDIO DEL ESTUDIANTE: EL RESULTADO DE LA SUMA / EL NUMERO DE MATERIAS (3)
FinFuncion

Funcion estado <- DeterminarEstado(promedio, notaMinima)//DETERMINA SI UN ESTUDIANTE APORBO O REPROBO
	Si promedio >= notaMinima Entonces
		estado = 1 // 1= VERDADERO, EN ESTE CASO APROBADO
	Sino
		estado = 0 // 0= FALSO, EN ESTE CASO REPROBADO
	FinSi
FinFuncion

Funcion GenerarReporte(promedios, estados)//MUESTRA EN PANTALLA EL REPORT6E FINAL CON LOS PROMEDIOS Y LOS ESTADOS (APROBADO O REPROBADO) DEL ESTUDIANTE)
	Definir i Como Entero
	Escribir "REPORTE FINAL"
	Para i <- 1 Hasta 4
		Escribir ""
		Escribir "Estudiante #", i 
		Escribir "  Promedio: ", promedios[i]
		Si estados[i] = 1 Entonces
			Escribir "  Estado: APROBADO"
		Sino
			Escribir "  Estado: REPROBADO"
		FinSi
	FinPara
FinFuncion
