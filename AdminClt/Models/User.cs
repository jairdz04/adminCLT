using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AdminClt.Models
{
    public class User
    {

        #region "atributos"

        public int UserID;
        public string email;
        public string password;

        #endregion

        #region "propiedades"

        public int ID {
            get { return UserID; }
            set { UserID = value; }
        }

        public string EMAIL
        {
            get { return email; }
            set { email = value; }
        }

        public string PASS {
            get { return password; }
            set { password = value; }
        }

        #endregion

        #region "constructores"

        public User() {
            this.UserID = 000;
            this.email = "";
            this.password = "";
        
        }

        public User(int UserID, string email, string password) {

            this.UserID = UserID;
            this.email = email;
            this.password = password;


        }


        #endregion

        #region "metodos sobreescritos"

        public override string ToString()
        {
            return "Codigo: " + this.UserID +
                    "\nEmail: " + this.email +
                    "\nPassword: " + this.password;

        }
        public override int GetHashCode()
        {
            return this.ToString().GetHashCode();
        }
        public override bool Equals(object obj)
        {
            User o = (User)obj;
            bool result = false;

            if ((this.UserID == o.UserID) &&
                (this.email == o.email) &&
                (this.password == o.password))

                result = true;

            return result;
        }


        #endregion





    }
}