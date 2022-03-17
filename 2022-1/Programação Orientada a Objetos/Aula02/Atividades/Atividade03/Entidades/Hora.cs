using System;

namespace Atividade03.Entidades
{
    public class Hora{
        public int hora;
        public int minutos;
        public int segundos;

        //Get e set HORA
         public int GetHora(){
            return this.hora;
        }
        public void SetHora(int hora){
            this.hora = hora;
        }

        //Get e set MINUTO
         public int GetMin(){
            return this.minutos;
        }
        public void SetMin(int minutos){
            this.minutos = minutos;
        }

        //Get e set SEGUNDO
         public int GetSeg(){
            return this.segundos;
        }
        public void SetSeg(int segundos){
            this.segundos = segundos;
        }

        public void validarHora(){
            if(this.hora > 24){
                Console.WriteLine("Um dia não possui mais de 24 horas.");
            }else if(this.minutos > 59){
                Console.WriteLine("A quantidade de minutos que você digitou é inválida!");
            
            }else if(this.segundos > 59){
                Console.WriteLine("A quantidade de segundos que você digitou é inválida!");
            }else{
                Console.WriteLine($"Hora: {this.hora}:{this.minutos}:{this.segundos}");
            }

        }
    }
}
