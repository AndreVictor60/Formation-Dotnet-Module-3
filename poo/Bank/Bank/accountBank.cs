using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bank
{
    public class AccountBank
    {
        private int account_id;
        public int Id
        {
            get { return account_id; }
            set { account_id = value; }
        }
        private String account_owner;
        public string Owner
        {
            get { return account_owner; }
            set { account_owner = value; }
        }
        private double account_solde;
        public double Solde
        {
            get { return account_solde; }
            set { account_solde = value; }
        }
        private string account_devise;
        public string Devise
        {
            get { return account_devise; }
            set { account_devise = value; }
        }

        public void Credit (double montant)
        {
            account_solde = account_solde + montant;
            return;
        }

        public void Debit (double montant)
        {
            account_solde = account_solde - montant;
            return;
        }


    }
}
