Algoritmo Calculadora
	Definir opt Como Entero
	
	Escribir ""
    Escribir"Hola profe, bienvenido a mi taller."
	Escribir ""
	Escribir "  1. Calcular volumen de un cono"
	Escribir "  2. Convertir Fahrenheit a Celsius"
	Escribir "  3. Convertir tiempo en segundos"
	Escribir "  4. Calcular la nota final de informática"
	Escribir "  5. Realizar la operación matemática"
	Escribir "  6. Realizar la segunda ecuación matemática"
	Escribir "  7. Calcular el sueldo"
	Escribir "  8. Revisar los resultados del punto 8"
	Escribir "  9. Calcular el área del triángulo"
	Escribir "  10.Calcular el préstamo hipotecario "
	Escribir "  11. Salir"
	Escribir ""
	Escribir "Ingrese el número de una opción para seleccionar: "
	Leer opt
	
	Repetir
		Segun opt Hacer
		caso 1:
			Escribir "Ha escogido calcular el volumen de un cono"
			Escribir ""
			CalcularVolumenCono
		caso 2:
			Escribir "Ha escogido convertir de grados Fahrenheit a Celsius"
			Escribir ""	
			ConvertirFahrenheitACelsius
		caso 3:
			Escribir "Ha seleccionado convertir segundos a su equivalente en horas y minutos"
			Escribir ""
			ConvertirSegundosAHorasMinutosSegundos
		caso 4:
			Escribir "Ha seleccionado calcular su nota en informática"
			Escribir ""
			CalcularCalificacionInformatica
		caso 5:
			Escribir "Primera Ecuación"
			Escribir ""
			RealizarOperacionMatematica
		caso 6:
			Escribir "Segunda Ecuación "
			Escribir ""
			opcion6
		caso 7:
			Escribir "Calculo de nomina"
			Escribir ""
			opcion7
		caso 8:
			Escribir "Respustas del punto 8"
			Escribir ""
			opcion8
		caso 9:
			Escribir "Ha seleccionado calcular el area"
			Escribir ""
			opcion9
		caso 10:
			Escribir ""
			Escribir ""
			calcpréstamo
		caso 11:
			Escribir "Saliendo..."
		De Otro Modo:
			Escribir ""
			Escribir "Pruebe una opción válida."
	Fin Segun
	Escribir "presione una tecla para continuar"
	Esperar Tecla
	
Hasta Que opt = 11
	
FinAlgoritmo


Funcion CalcularVolumenCono
    LimpiarPantalla
    Definir pie, r, h, volumen Como Real
    pie <- 3.14159
    r <- 14.5 * 14.5
    h <- 26.79
    volumen <- (pie * r * h) / 3
    Escribir"--------BIENVENIDO--------"
    Escribir"Según las indicaciones, el resultado para hallar el volumen"
    Escribir"de un cono con un radio de la base de 14,5 y una altura de 26,79 es:", volumen
FinFuncion

Funcion ConvertirFahrenheitACelsius
    LimpiarPantalla
    Definir  rf, c como Real
    Escribir"Por favor, ingrese un número real de grados Fahrenheit que quiera convertir:"
    Leer rf
    c <- (rf - 32) / 1.8
    Escribir"El número ingresado convertido a grados Celsius es: C°", c
FinFuncion

Funcion ConvertirSegundosAHorasMinutosSegundos
    LimpiarPantalla
    Definir is, h, m Como Entero
	Definir s Como Real
    Escribir"Por favor, ingrese el tiempo transcurrido en segundos:"
    Leer is
    h <- is / 3600
    is <- is % 3600
    m <- is / 60
    s <- is % 60
    Escribir"El número ingresado en horas es:", h, "h"
    Escribir"El número ingresado en minutos es:", m, "m"
    Escribir"El número restante equivalente en segundos es:", s, "s"
FinFuncion

Funcion CalcularCalificacionInformatica
    LimpiarPantalla
    definir parcial_PR1, taller_PR1, quiz1, ejercicio_clase, quiz2, exposicion, nota_final como real
	
    Escribir"Ingrese la calificación del Parcial PR1 (80%):"
    Leer parcial_PR1
	
    Escribir"Ingrese la calificación del Taller PR1 (20%):"
    Leer taller_PR1
	
    Escribir"Ingrese la calificación del Quiz 1 (25%):"
    Leer quiz1
	
    Escribir"Ingrese la calificación del Ejercicio Clase (25%):"
    Leer ejercicio_clase
	
    Escribir"Ingrese la calificación del Quiz 2 (25%):"
    Leer quiz2
	
    Escribir"Ingrese la calificación de la Exposición (25%):"
    Leer exposicion
	
    nota_final <- (parcial_PR1 * 0.8 + taller_PR1 * 0.2) * 0.7 + (quiz1 * 0.25 + ejercicio_clase * 0.25 + quiz2 * 0.25 + exposicion * 0.25) * 0.3
	
    Escribir"La nota final obtenida es:", nota_final
FinFuncion

Funcion RealizarOperacionMatematica
    LimpiarPantalla
    definir r, a, b, c, d, resultado como real
	Escribir "Ingrese el valor de a:"
	leer a
	Escribir "Ingrese el valor de b:"
	leer b
	Escribir "Ingrese el valor de c:"
	leer c
	Escribir "Ingrese el valor de d:"
	leer d
	Escribir "Ingrese el valor de r:"
	leer r
	
	resultado <- (4 / (3 * (r + 34))) - 9 * (a + (b * c)) + (3 + d * (2 + a)) / (a + b * d)
	Escribir "resultado" resultado
FinFuncion

Funcion  opcion5
	LimpiarPantalla
	Mostrar "En la siguiente expresión, se necesita que ingreses las variables para obtener un resultado"
	Mostrar "\t     4                         3 + d (2 + a) "
	Mostrar "\t............. - 9(a + b c) + ..............."
	Mostrar "\t 3 (r + 34)                     a + b d    "
	Definir  r, a, b, c, d como Reales
	Mostrar "Por favor, ingrese la variable r:"
	Leer r
	Mostrar "Por favor, ingrese la variable a:"
	Leer a
	Mostrar "Por favor, ingrese la variable b:"
	Leer b
	Mostrar "Por favor, ingrese la variable c:"
	Leer c
	Mostrar "Por favor, ingrese la variable d:"
	Leer d
	Definir resultado como Real
	resultado = (4 / (3 * (r + 34))) - 9 * (a + (b * c)) + (3 + d * (2 + a)) / (a + b * d)
	Mostrar "Esta es la operación relacionada con las variables ingresadas: ", resultado
FinFuncion

función opcion6
	LimpiarPantalla
	Definir  x_ como Entero
	Definir y_ como Entero
	Definir lambda como Real
	Definir alfa como Real
	Definir sigma como Real
	Definir f como Real
	x_ = 12
	y_ = 3
	lambda = 1.11695
	alfa = 328.67
	sigma = 2.1836
	f = 3 * ((x_ + sigma * y_) / ((x_ * x_) - (y_ * y_))) - lambda * (alfa - 13.7)
	Mostrar "El valor resultante de la fórmula en donde f es igual a:"
	Mostrar "\t          (x+sigma*y)"
	Mostrar "\tf = 3 * _____ - lambda * (alfa-13.7)"
	Mostrar "\t          (x^2-y^2)"
	Mostrar "tiene un resultado de: ", f
FinFuncion

Funcion opcion7
	LimpiarPantalla
	Definir  sbase, cd, cc, sb, rt_irpf, sneto como Reales
	definir h_ex, h, hdsmd como Enteros
	definir prc_irpf como Real
	Mostrar "......ingresar los datos para poder calcularlo......"
	Mostrar "Sueldo base: "
	Leer sbase
	Mostrar "Complemento de destino: "
	Leer cd
	Mostrar "Complemento de cargo académico: "
	Leer cc
	Mostrar "Horas extra realizadas: "
	Leer h_ex
	Mostrar "Hijos: "
	Leer h
	Mostrar "Mayores dependientes: "
	Leer hdsmd
	sb = sbase + cd + cc + (h_ex * 23)
	prc_irpf = 24 - (2 * h) - hdsmd
	rt_irpf = (sb * prc_irpf) / 100
	sneto = sb - rt_irpf
	Mostrar ""
	Mostrar "_Este es el cálculo de la nómina_"
	Mostrar "Sueldo base: ", sbase, " $"
	Mostrar "Complemento de destino: ", cd, " $"
	Mostrar "Complemento de cargo académico: ", cc, " $"
	Mostrar "Horas extra realizadas: ", h_ex
	Mostrar "Hijos: ", h
	Mostrar "Mayores dependientes: ", hdsmd
	Mostrar "Sueldo bruto: ", sb, " $"
	Mostrar "Porcentaje de IRPF: ", prc_irpf, " %"
	Mostrar "Retención por IRPF: ", rt_irpf, " $"
	Escribir "Sueldo neto: $" sneto
Finfuncion

Funcion  opcion8
	LimpiarPantalla
	Definir a como Entero
	Definir d como Real
	Definir a1, a2, a3 como Enteros
	Definir d1, d2 como Reales
	Escribir""
	Mostrar "INICIADO. . ."
	Mostrar "Presiona enter para ver cada uno de los resultados"
	Esperar Tecla
	a = 1
	d = 1.0
	a1 = 46 MOD 9 + 4 * 4 - 2
	Mostrar "Resultado de la expresión 1: ", a1
	Esperar Tecla
	a2 = 45 + 43 MOD 5 * (23 * 3 MOD 2)
	Mostrar "Resultado de la expresión 2: ", a2
	Esperar Tecla
	a3 = 45 + 45 * 50 MOD (a-1)
	Mostrar "Resultado de la expresión 3: ", a3
	Esperar Tecla
	d1 = 1.5 * 3 + (1+d)
	Mostrar "Resultado de la expresión 4: ", d1
	Esperar Tecla
	d2 = 1.5 * 3 + (d+1)
	Mostrar "Resultado de la expresión 5: ", d2
	Esperar Tecla
	aux = 3 / a
	a = a MOD (aux + 3)
	Mostrar "Resultado de la expresión 6: ", a
	Esperar Tecla
	Esperar Tecla
FinFuncion


Funcion cAT(l1, l2, a)
    Definir area como Real
	a <- a/180
    area <- 0.5 * l1 * l2 * SEN(a)
	Escribir "El area de un triangulo calculada desde la ley del seno es: " area
FinFuncion
Funcion  opcion9
	LimpiarPantalla
	Definir l1, l2, a, area como Reales
	Mostrar "por favor ingrese el valor del lado 1: "
	Leer l1
	Mostrar "por favor ingrese el valor del lado 2: "
	Leer l2
	Mostrar "por favor ingrese el valor del ángulo: "
	Leer a
	cAT(l1, l2, a)
FinFuncion

Funcion calcpréstamo
	Definir capital, interesanual, meses, ratio, Totpagado, cuota, amortization Como Real
	Escribir ""
	Escribir "Ingrese el capital prestado: "
	Leer capital
	Escribir "Ingrese el interés anual: "
	Leer interesanual
	Escribir "Ingrese el plazo en meses: "
	Leer meses
	meses <- meses*(-1)
	ratio <- interesanual / 121
	cuota <- ((capital * ratio) / (1 - EXP(1 + (ratio / 100) * meses)))
	Totpagado <- cuota * meses
	interes <- Totpagado - capital
	amortization <- capital
	Escribir ""
	Escribir "Cuota mensual: " cuota
	escribir "Total pagado: " Totpagado
	escribir "Cantidad de amortización: " amortization
	escribir "Cantidad de intereses: " intereses
FinFuncion
