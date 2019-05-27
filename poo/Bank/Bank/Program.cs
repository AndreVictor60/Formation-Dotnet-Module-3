using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace Bank
{
    class Program
    {
        static void Main(string[] args)
        {
            Regex regexName = new Regex(@"^[a-zA-Z][a-zA-Z\\s]+$");
            bool correct = false;
            AccountBank AccountLaManu;
            AccountLaManu = new AccountBank();
            //{
            //    Owner = "LaManu",
            //    Solde = 2000,
            //    Devise = "euros"
            //};
            while (!correct)
            {
                Console.WriteLine("Titulaire : ");
                string name = Console.ReadLine();
                if (regexName.IsMatch(name))
                {
                    AccountLaManu.Owner = name;
                    correct = true;
                }
                else
                {
                    Console.WriteLine("Erreur lors de insertion du titulaire du compte");
                    correct = false;
                }
            }
            correct = false;
            while (!correct)
            {
                Console.WriteLine("Solde : ");
                if (double.TryParse(Console.ReadLine(), out double balance))
                {
                    AccountLaManu.Solde = balance;
                    correct = true;
                }
                else
                {
                    Console.WriteLine("Erreur lors de insertion du solde du compte");
                    correct = false;
                }
            }
            correct = false;
            while (!correct)
            {
                Console.WriteLine("Devise : ");
                string devise = Console.ReadLine();
                if (regexName.IsMatch(devise))
                {
                    AccountLaManu.Devise = devise;
                    correct = true;
                }
                else
                {
                    Console.WriteLine("Erreur lors de insertion de la devise du compte");
                    correct = false;
                }
            }
            correct = false;
            while (!correct)
            {
                Console.WriteLine("Créditer le solde :");
                if (double.TryParse(Console.ReadLine(), out double montant) && montant > 0)
                {
                    AccountLaManu.Credit(montant);
                    correct = true;
                }
                else
                {
                    Console.WriteLine("Erreur lors de insertion du crédit sur le compte " + AccountLaManu.Owner);
                    correct = false;
                }
            }
            Console.WriteLine("Le solde du compte " + AccountLaManu.Owner + " est de " + AccountLaManu.Solde);
            Console.ReadLine();

        }
    }
}
