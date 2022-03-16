using System;

namespace Atividade01.Entidades
{
    public class Calcular
    {
        public double baseT;
        public double alturaT;
        public double areaT;


        /*public Calcular(double baseT, double alturaT)
        {
            this.baseT = baseT;
            this.alturaT = alturaT;
        }*/

        //Base do Triângulo:
        public double GetBaseT()
        {
            return this.baseT;
        }
        public void SetBaseT(double baseT)
        {
            this.baseT = baseT;
        }

        //Altura do Triângulo:
        public double GetAlturaT()
        {
            return this.alturaT;
        }
        public void SetAlturaT(int alturaT)
        {
            this.alturaT = alturaT;
        }

        //Calcular área do triângulo:
        public double AreaT() 
        {
            this.areaT = (this.baseT * this.alturaT)/2;
            return areaT;
        }
    
    }
}