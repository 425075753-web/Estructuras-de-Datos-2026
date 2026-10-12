
Algoritmo Registro_Pacientes

    Definir n, i, menores, hospitalizados Como Entero
    Definir porcentaje Como Real
    Definir nombres, sexos, calles, ciudades Como Cadena
    Definir telefonos, asegurados, estados Como Cadena
    Definir edades, numeros Como Entero

    Dimension nombres[100]
    Dimension edades[100]
    Dimension sexos[100]
    Dimension calles[100]
    Dimension numeros[100]
    Dimension ciudades[100]
    Dimension telefonos[100]
    Dimension asegurados[100]
    Dimension estados[100]

    menores <- 0
    hospitalizados <- 0

    Escribir "Cantidad de pacientes (maximo 100):"
    Leer n

    Si n >= 1 Y n <= 100 Entonces

        Para i <- 1 Hasta n Hacer
            Escribir "Paciente ", i

            Escribir "Nombre:"
            Leer nombres[i]

            Escribir "Edad:"
            Leer edades[i]

            Escribir "Sexo:"
            Leer sexos[i]

            Escribir "Calle:"
            Leer calles[i]

            Escribir "Numero:"
            Leer numeros[i]

            Escribir "Ciudad:"
            Leer ciudades[i]

            Escribir "Telefono:"
            Leer telefonos[i]

            Escribir "Esta asegurado? (SI/NO)"
            Leer asegurados[i]

            Escribir "Esta hospitalizado? (SI/NO)"
            Leer estados[i]

            Si Mayusculas(estados[i]) = "SI" Entonces
                hospitalizados <- hospitalizados + 1

                Si edades[i] < 13 Entonces
                    menores <- menores + 1
                FinSi
            FinSi
        FinPara

        Escribir "PACIENTES HOSPITALIZADOS"

        Para i <- 1 Hasta n Hacer
            Si Mayusculas(estados[i]) = "SI" Entonces
                Escribir nombres[i]
            FinSi
        FinPara

        Si hospitalizados > 0 Entonces
            porcentaje <- menores * 100 / hospitalizados
            Escribir "Porcentaje de menores de 13: ", porcentaje, "%"
        SiNo
            Escribir "No hay pacientes hospitalizados"
        FinSi

    SiNo
        Escribir "Cantidad no valida"
    FinSi

FinAlgoritmo
