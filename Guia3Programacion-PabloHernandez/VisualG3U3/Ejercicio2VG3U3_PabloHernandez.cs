using System;

class Program
{
    static void Main()
    {
        string[,] vehiculos = new string[10, 3];
        int opcion;

        do
        {
            Console.WriteLine("----- MENU -----");
            Console.WriteLine("1. Registrar vehículo");
            Console.WriteLine("2. Mostrar vehículos");
            Console.WriteLine("3. Actualizar vehículo");
            Console.WriteLine("4. Eliminar vehículo");
            Console.WriteLine("5. Salir");
            opcion = int.Parse(Console.ReadLine());

            switch (opcion)
            {
                case 1:
                    for (int i = 0; i < 10; i++)
                    {
                        if (vehiculos[i, 0] == null)
                        {
                            Console.Write("Placa: ");
                            vehiculos[i, 0] = Console.ReadLine();

                            Console.Write("Propietario: ");
                            vehiculos[i, 1] = Console.ReadLine();

                            Console.Write("Marca: ");
                            vehiculos[i, 2] = Console.ReadLine();

                            Console.WriteLine("Vehículo registrado.");
                            break;
                        }
                    }
                    break;

                case 2:
                    Console.WriteLine("=== VEHÍCULOS REGISTRADOS ===");
                    for (int i = 0; i < 10; i++)
                    {
                        if (vehiculos[i, 0] != null)
                        {
                            Console.WriteLine($"Placa: {vehiculos[i, 0]}");
                            Console.WriteLine($"Propietario: {vehiculos[i, 1]}");
                            Console.WriteLine($"Marca: {vehiculos[i, 2]}");
                            Console.WriteLine("-------------------------");
                        }
                    }
                    break;

                case 3:
                    Console.Write("Placa a buscar: ");
                    string placa = Console.ReadLine();

                    for (int i = 0; i < 10; i++)
                    {
                        if (vehiculos[i, 0] == placa)
                        {
                            Console.Write("Nuevo propietario: ");
                            vehiculos[i, 1] = Console.ReadLine();

                            Console.Write("Nueva marca: ");
                            vehiculos[i, 2] = Console.ReadLine();

                            Console.WriteLine("Vehículo actualizado.");
                            break;
                        }
                    }
                    break;

                case 4:
                    Console.Write("Placa a eliminar: ");
                    placa = Console.ReadLine();

                    for (int i = 0; i < 10; i++)
                    {
                        if (vehiculos[i, 0] == placa)
                        {
                            vehiculos[i, 0] = null;
                            vehiculos[i, 1] = null;
                            vehiculos[i, 2] = null;

                            Console.WriteLine("Vehículo eliminado.");
                            break;
                        }
                    }
                    break;
            }

        } while (opcion != 5);
    }
}
