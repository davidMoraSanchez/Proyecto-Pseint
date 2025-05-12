Algoritmo Agricola
	
	//definir variables
	Definir parcela como real
	definir total, promedio Como Real
	DEFINIR opcion Como Entero
	//hacer menu de opciones
	Mientras opcion <> 2 Hacer
		escribir" MENU PRINCIPAL"
		Escribir"1. Ingrese la produccion de su parcela al mes"
		Escribir "2. Salir del programa"
		leer opcion
		Segun opcion Hacer
			1:
				Escribir"Registrar produccion de su parcela"
				Para i<-1 Hasta 25 Con Paso 1 Hacer//usar el (para) para poder registar la produccion de las parcelas
					Escribir "Producion de parcela al mes"
					leer parcela
					Si parcela <= 500 Entonces//USAR Si para  determinar si es producion baja, media o alta
						Escribir "Produccion baja"
					SiNo
						Si parcela >500 Y parcela <=1000 Entonces
							Escribir"Produccion media"
						SiNo
							Si parcela>1000  Entonces
								Escribir"Produccion alta"
							SiNo
								Escribir "No hubo produccion"
							Fin Si
						Fin Si
					Fin Si
					fin para
					//determinar la produccion de las parcelas, produccion baja, alta con un condicional, SE DETERMINO RANGO DE 300 HACIA ABAJO (MENOR) Y DE 1500 PARA ARRIBA (MAYOR)
					Si parcela <300  Entonces
						Escribir "Parcela con menor produccion"
					SiNo
						Si parcela >1500  Entonces
							Escribir" Parcela con mayor produccion"
						Fin Si
					Fin Si
				//hacer proceso del total y del promedio
				tolal= i+parcela
				promedio= total/i
				escribir" La suma del total de las parcelas es: ", total
				escribir "El promedio de produccion de las parcelas es de: ", promedio
			2:
				Repetir//hacer la salida del menu confirmando para mas acertividad
					Escribir "¿Está seguro que desea salir? (S/N)"
					Leer confirmar
				Hasta Que confirmar = "S" o confirmar = "N"
				Si confirmar = "S" Entonces
					Escribir "Saliendo del programa..."
				SiNo
					Escribir "Desea continuar..."
				FinSi
			De Otro Modo://SI INGRESA OTRO VALOR, VOLVERA A HACER LA PREGUNTA
				Escribir "Opción inválida."
		Fin Segun
	Fin Mientras
FinAlgoritmo
