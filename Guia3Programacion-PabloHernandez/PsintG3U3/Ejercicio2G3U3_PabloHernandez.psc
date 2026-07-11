Algoritmo Registro_Parqueo
	
    Dimension vehiculos[10,3]
    Definir vehiculos Como Cadena
	
    Definir opcion, i Como Entero
    Definir placa, propietario, marca Como Cadena
	
    // Inicializar matriz vacía
    Para i = 0 Hasta 9 Con Paso 1
        vehiculos[i,0] <- ""
        vehiculos[i,1] <- ""
        vehiculos[i,2] <- ""
    FinPara
	
    Repetir
        Escribir "----- MENU -----"
        Escribir "1. Registrar vehículo"
        Escribir "2. Mostrar vehículos"
        Escribir "3. Actualizar vehículo"
        Escribir "4. Eliminar vehículo"
        Escribir "5. Salir"
        Leer opcion
		
        Segun opcion Hacer
			
            1:
                // Registrar vehículo
                Para i = 0 Hasta 9 Con Paso 1
                    Si vehiculos[i,0] = "" Entonces
                        Escribir "Placa:"
                        Leer placa
                        Escribir "Propietario:"
                        Leer propietario
                        Escribir "Marca:"
                        Leer marca
						
                        vehiculos[i,0] <- placa
                        vehiculos[i,1] <- propietario
                        vehiculos[i,2] <- marca
						
                        Escribir "Vehículo registrado."
                        
                    FinSi
                FinPara
				
            2:
                // Mostrar vehículos
                Escribir "=== VEHÍCULOS REGISTRADOS ==="
                Para i = 0 Hasta 9 Con Paso 1
                    Si vehiculos[i,0] <> "" Entonces
                        Escribir "Placa: ", vehiculos[i,0]
                        Escribir "Propietario: ", vehiculos[i,1]
                        Escribir "Marca: ", vehiculos[i,2]
                        Escribir "-------------------------"
                    FinSi
                FinPara
				
            3:
                // Actualizar vehículo
                Escribir "Placa a buscar:"
                Leer placa
                Para i = 0 Hasta 9 Con Paso 1
                    Si vehiculos[i,0] = placa Entonces
                        Escribir "Nuevo propietario:"
                        Leer propietario
                        Escribir "Nueva marca:"
                        Leer marca
						
                        vehiculos[i,1] <- propietario
                        vehiculos[i,2] <- marca
						
                        Escribir "Vehículo actualizado."
                        
                    FinSi
                FinPara
				
            4:
                // Eliminar vehículo
                Escribir "Placa a eliminar:"
                Leer placa
                Para i = 0 Hasta 9 Con Paso 1
                    Si vehiculos[i,0] = placa Entonces
                        vehiculos[i,0] <- ""
                        vehiculos[i,1] <- ""
                        vehiculos[i,2] <- ""
                        Escribir "Vehículo eliminado."
                        
                    FinSi
                FinPara
				
        FinSegun
		
    Hasta Que opcion = 5
	
FinAlgoritmo
