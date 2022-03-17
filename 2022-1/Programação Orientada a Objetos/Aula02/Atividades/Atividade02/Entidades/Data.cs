using System;

namespace Atividade02.Entidades
{
    public class Data
    {
        public int dia;
        public int mes;
        public int ano;

        
        //Get e set DIA
         public int GetDia(){
            return this.dia;
        }
        public void SetDia(int dia){
            this.dia = dia;
        }

        //Get e set MÊS
         public int GetMes(){
            return this.mes;
        }
        public void SetMes(int mes){
            this.mes = mes;
        }

        //Get e set ANO
         public int GetAno(){
            return this.ano;
        }
        public void SetAno(int ano){
            this.ano = ano;
        }

        public void validarDia(){
            if(this.mes == 2 && dia > 28){
                Console.WriteLine("Data inválida!");
            }else if(this.mes == 4 || this.mes == 6 || this.mes == 9 || this.mes == 11 && dia > 30){
                Console.WriteLine("O mês que você digitou possui apenas 30 dias!");
            }else if(this.dia > 31){
                Console.WriteLine("Não existe mês com mais de 31 dias!");
            }else if(this.mes > 12 || this.mes < 0){
                Console.WriteLine("O ano possui apenas 12 meses!");
            }else{
                Console.WriteLine($"Data: {this.dia}/{this.mes}/{this.ano}");
            }
        }
    }
}