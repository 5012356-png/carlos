Algoritmo GananciaVinicultores
	//Declaramos las variables de entrada
    Definir kilos, precio_inicial, precio_final, total Como Real
    Definir tipo Como Caracter
    Definir tamano Como Entero
    
    Escribir "Ingrese la cantidad de kilos de uva:"
    Leer kilos
    Escribir "Ingrese el precio inicial por kilo:"
    Leer precio_inicial
    Escribir "Ingrese el tipo de uva (A o B):"
    Leer tipo
    Escribir "Ingrese el tamano de la uva (1 o 2):"
    Leer tamano
    
    Si tipo = "A" Entonces tipo = "a"
        Si tamano = 1 Entonces
            precio_final <- precio_inicial + 20
        Sino
            precio_final <- precio_inicial + 30
        FinSi
    Sino
        Si tamano = 1 Entonces
            precio_final <- precio_inicial - 30
        Sino
            precio_final <- precio_inicial - 50
        FinSi
    FinSi
    
    total <- precio_final * kilos
    Escribir "El total que recibirá el productor es: $", total
FinAlgoritmo