using System;

class Program
{
    static void Main()
    {
        string[,] productos = new string[10, 3];
        int opcion;

        do
        {
            Console.WriteLine("====== MENÚ ======");
            Console.WriteLine("1. Registrar producto");
            Console.WriteLine("2. Mostrar productos");
            Console.WriteLine("3. Actualizar producto");
            Console.WriteLine("4. Eliminar producto");
            Console.WriteLine("5. Salir");
            opcion = int.Parse(Console.ReadLine());

            switch (opcion)
            {
                case 1:
                    // Registrar producto
                    for (int i = 0; i < 10; i++)
                    {
                        if (productos[i, 0] == null)
                        {
                            Console.Write("Código: ");
                            productos[i, 0] = Console.ReadLine();

                            Console.Write("Nombre: ");
                            productos[i, 1] = Console.ReadLine();

                            Console.Write("Cantidad: ");
                            productos[i, 2] = Console.ReadLine();

                            Console.WriteLine("Producto registrado.");
                            break;
                        }
                    }
                    break;

                case 2:
                    // Mostrar productos
                    Console.WriteLine("=== LISTA DE PRODUCTOS ===");
                    for (int i = 0; i < 10; i++)
                    {
                        if (productos[i, 0] != null)
                        {
                            Console.WriteLine($"Código: {productos[i, 0]}");
                            Console.WriteLine($"Nombre: {productos[i, 1]}");
                            Console.WriteLine($"Cantidad: {productos[i, 2]}");
                            Console.WriteLine("-------------------------");
                        }
                    }
                    break;

                case 3:
                    // Actualizar producto
                    Console.Write("Código a buscar: ");
                    string codigo = Console.ReadLine();

                    for (int i = 0; i < 10; i++)
                    {
                        if (productos[i, 0] == codigo)
                        {
                            Console.Write("Nuevo nombre: ");
                            productos[i, 1] = Console.ReadLine();

                            Console.Write("Nueva cantidad: ");
                            productos[i, 2] = Console.ReadLine();

                            Console.WriteLine("Producto actualizado.");
                            break;
                        }
                    }
                    break;

                case 4:
                    // Eliminar producto
                    Console.Write("Código a eliminar: ");
                    codigo = Console.ReadLine();

                    for (int i = 0; i < 10; i++)
                    {
                        if (productos[i, 0] == codigo)
                        {
                            productos[i, 0] = null;
                            productos[i, 1] = null;
                            productos[i, 2] = null;

                            Console.WriteLine("Producto eliminado.");
                            break;
                        }
                    }
                    break;
            }

        } while (opcion != 5);
    }
}
