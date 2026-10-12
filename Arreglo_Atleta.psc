Algoritmo Arreglo_Atletas

    Definir nombres, sexos Como Cadena
    Definir edades, i Como Entero
    Definir pesos, suma, promedio Como Real

    Dimension nombres[6]
    Dimension sexos[6]
    Dimension edades[6]
    Dimension pesos[6]

    suma <- 0

    Para i <- 1 Hasta 6 Hacer
        Escribir "Nombre del atleta ", i, ":"
        Leer nombres[i]

        Escribir "Edad:"
        Leer edades[i]

        Escribir "Sexo:"
        Leer sexos[i]

        Escribir "Peso:"
        Leer pesos[i]

        suma <- suma + pesos[i]
    FinPara

    promedio <- suma / 6

    Para i <- 1 Hasta 6 Hacer
        Escribir nombres[i], " - Sexo: ", sexos[i]
    FinPara

    Escribir "Promedio de peso: ", promedio

FinAlgoritmo
