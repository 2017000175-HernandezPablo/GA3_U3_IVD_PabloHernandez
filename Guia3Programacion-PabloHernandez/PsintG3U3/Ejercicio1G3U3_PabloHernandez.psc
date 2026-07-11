Algoritmo sin_tiInventario_Tienda
	
    Dimension productos[10,3]
    Definir productos Como Cadena
	
    Definir opcion, i Como Entero
    Definir codigo, nombre Como Cadena
    Definir cantidad Como Entero
	
    // Inicializar matriz vacía
    Para i = 0 Hasta 9 Con Paso 1
        productos[i,0] <- ""
        productos[i,1] <- ""
        productos[i,2] <- ""
    FinPara
	
    Repetir
        Escribir "====== MENÚ ======"
        Escribir "1. Registrar producto"
        Escribir "2. Mostrar productos"
        Escribir "3. Actualizar producto"
        Escribir "4. Eliminar producto"
        Escribir "5. Salir"
        Leer opcion
		
        Segun opcion Hacer
			
            1:
                // Registrar producto
                Para i = 0 Hasta 9
                    Si productos[i,0] = "" Entonces
                        Escribir "Código:"
                        Leer codigo
                        Escribir "Nombre:"
                        Leer nombre
                        Escribir "Cantidad:"
                        Leer cantidad
						
                        productos[i,0] <- codigo
                        productos[i,1] <- nombre
                        productos[i,2] <- ConvertirATexto(cantidad)
						
                        Escribir "Producto registrado."
                        
                    FinSi
                FinPara
				
            2:
                // Mostrar productos
                Escribir "=== LISTA DE PRODUCTOS ==="
                Para i = 0 Hasta 9
                    Si productos[i,0] <> "" Entonces
                        Escribir "Código: ", productos[i,0]
                        Escribir "Nombre: ", productos[i,1]
                        Escribir "Cantidad: ", productos[i,2]
                        Escribir "-------------------------"
                    FinSi
                FinPara
				
            3:
                // Actualizar producto
                Escribir "Código a buscar:"
                Leer codigo
                Para i = 0 Hasta 9
                    Si productos[i,0] = codigo Entonces
                        Escribir "Nuevo nombre:"
                        Leer nombre
                        Escribir "Nueva cantidad:"
                        Leer cantidad
						
                        productos[i,1] <- nombre
                        productos[i,2] <- ConvertirATexto(cantidad)
						
                        Escribir "Producto actualizado."
                        
                    FinSi
                FinPara
				
            4:
                // Eliminar producto
                Escribir "Código a eliminar:"
                Leer codigo
                Para i = 0 Hasta 9
                    Si productos[i,0] = codigo Entonces
                        productos[i,0] <- ""
                        productos[i,1] <- ""
                        productos[i,2] <- ""
                        Escribir "Producto eliminado."
                        
                    FinSi
                FinPara
				
        FinSegun
		
    Hasta Que opcion = 5
	
FinAlgoritmo
