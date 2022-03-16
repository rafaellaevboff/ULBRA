using System;
using Atividade01.Entidades;

namespace Atividade01
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("CALCULAR A ÁREA DE UM TRIÂNGULO");

            Calcular calcularT = new Calcular();
            calcularT.SetBaseT(100);
            calcularT.SetAlturaT(20);
            Console.WriteLine("Base: " + calcularT.GetBaseT());
            Console.WriteLine("Altura: " + calcularT.GetAlturaT());
            Console.WriteLine("Área do triângulo: " + calcularT.AreaT());

            //Console.WriteLine(calcular.AreaT);
            
        }
    }
}
