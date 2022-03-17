using System;

namespace Atividade02.Entidades
{
    class Program
    {
        static void Main(string[] args)
        {
            Data data1 = new Data();
            data1.SetDia(12);
            data1.SetMes(12);
            data1.SetAno(2020);
            data1.validarDia();

            Data data2 = new Data();
            data2.SetDia(34);
            data2.SetMes(12);
            data2.SetAno(2020);
            data2.validarDia();

            Data data3 = new Data();
            data3.SetDia(30);
            data3.SetMes(2);
            data3.SetAno(2020);
            data3.validarDia();

            Data data4 = new Data();
            data4.SetDia(12);
            data4.SetMes(14);
            data4.SetAno(2020);
            data4.validarDia();

            Data data5 = new Data();
            data5.SetDia(31);
            data5.SetMes(4);
            data5.SetAno(2020);
            data5.validarDia();
        }
    }
}
