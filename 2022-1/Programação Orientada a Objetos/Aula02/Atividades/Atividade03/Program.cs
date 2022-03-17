using System;

namespace Atividade03.Entidades
{
    class Program
    {
        static void Main(string[] args)
        {
            Hora hora1 = new Hora();
            hora1.SetHora(16);
            hora1.SetMin(47);
            hora1.SetSeg(23);
            hora1.validarHora();

            Hora hora2 = new Hora();
            hora2.SetHora(25);
            hora2.SetMin(47);
            hora2.SetSeg(23);
            hora2.validarHora();

            Hora hora3 = new Hora();
            hora3.SetHora(24);
            hora3.SetMin(61);
            hora3.SetSeg(23);
            hora3.validarHora();

            Hora hora4 = new Hora();
            hora4.SetHora(24);
            hora4.SetMin(30);
            hora4.SetSeg(61);
            hora4.validarHora();
        }
    }
}
