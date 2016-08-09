using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AdminClt.Models
{
    public class Docente
    {
        #region "atributos"

        public int id;
        public string tipo;
        public string identificacion;
        public string nombres;
        public string sexo;
        public string area;
        public string email;
        public string sede;
        public string telefono;
        public string fecha_nacimiento;
       
        #endregion


        #region "Propiedades"

        public int ID
        {
            get { return id; }
            set { id = value; }
        }

        public string IDENTIFICACION
        {
            get { return identificacion; }
            set { identificacion = value; }

        }

        public string NOMBRES
        {
            get { return nombres; }
            set { nombres = value; }

        }

        public string SEXO
        {
            get { return sexo; }
            set { sexo = value; }

        }

        public string AREA
        {
            get { return area; }
            set { area = value; }

        }
        public string EMAIL
        {
            get { return email; }
            set { email = value; }

        }
     
        public string FECHA_NACIMIENTO
        {
            get { return fecha_nacimiento; }
            set { fecha_nacimiento = value; }

        }


        public string TIPO
        {
            get { return tipo; }
            set { tipo = value; }

        }
        public string SEDE
        {
            get { return sede; }
            set { sede = value; }

        }

        public string TELEFONO
        {
            get { return telefono; }
            set { telefono = value; }

        }


        #endregion

         #region "constructores"

          public Docente()
        {
            this.id = 000;
            this.tipo = ""; 
            this.identificacion = "";
            this.nombres = "";
            this.sexo = "";
            this.area = "";
            this.email = "";
            this.sede= "";
            this.telefono = "";
            this.fecha_nacimiento = "";
            
          

        }

          public Docente (int id, string tipo, string identificacion, string nombres, string sexo, string area, string email, string sede, string fecha_nacimiento, string telefono)
          {
              this.id = id;
              this.tipo = tipo;
              this.identificacion = identificacion;
              this.nombres = nombres;
              this.sexo = sexo;
              this.area = area;
              this.email = email;
              this.sede = sede;
              this.telefono = telefono;
              this.fecha_nacimiento = fecha_nacimiento;
             
          }
    
        #endregion

          #region "metodos sobreescritos"

          public override string ToString()
          {
              return "Codigo: " + this.id +
                      "\nTipo de identificación: " + this.tipo +
                      "\nIdentificación: " + this.identificacion +
                      "\nNombres: " + this.nombres +
                      "\nSexo: " + this.sexo +
                      "\nArea: " + this.area +
                      "\nE-mail: " + this.email +
                      "\nsede: " + this.sede +
                      "\nFecha de Nacimiento: " + this.fecha_nacimiento +
                      "\nTelefono: " + this.telefono;
              

          }
          public override int GetHashCode()
          {
              return this.ToString().GetHashCode();
          }
          public override bool Equals(object obj)
          {
              Docente o = (Docente)obj;
              bool result = false;

              if ((this.id == o.id) &&
                  (this.tipo == o.tipo) &&
                  (this.identificacion == o.identificacion) &&
                  (this.nombres == o.nombres) &&
                  (this.sexo == o.sexo) &&
                  (this.area == o.area) &&
                  (this.email == o.email) &&
                  (this.sede == o.sede) &&
                  (this.fecha_nacimiento == o.fecha_nacimiento)&&
                  (this.telefono == o.telefono))

                  result = true;

              return result;
          }


          #endregion

    }
}