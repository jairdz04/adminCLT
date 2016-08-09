using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AdminClt.Models
{
    public class Alumno
    {
        #region "atributos"

        public int id;
        public string tipo;
        public string identificacion;
        public string nombres;
        public string sexo;
        public string curso;
        public string director_grupo;
        public string sede;
        public string fecha_nacimiento;
        public string descripcion_inicial;

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

        public string CURSO
        {
            get { return curso; }
            set { curso = value; }

        }
        public string DIRECTOR_GRUPO
        {
            get { return director_grupo; }
            set { director_grupo = value; }

        }

        public string FECHA_NACIMIENTO
        {
            get { return fecha_nacimiento; }
            set { fecha_nacimiento = value; }

        }
        
         public string DESCRIPCION_INICIAL
        {
            get { return descripcion_inicial; }
            set { descripcion_inicial = value; }

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
        #endregion

        #region "constructores"

          public Alumno()
        {
            this.id = 000;
            this.tipo = ""; 
            this.identificacion = "";
            this.nombres = "";
            this.sexo = "";
            this.curso = "";
            this.director_grupo = "";
            this.sede= "";
            this.fecha_nacimiento = "";
            this.descripcion_inicial = "";

        }

          public Alumno(int id, string tipo, string identificacion, string nombres, string sexo, string curso, string director_grupo, string sede, string fecha_nacimiento, string descripcion_inicial)
          {
              this.id = id;
              this.tipo = tipo;
              this.identificacion = identificacion;
              this.nombres = nombres;
              this.sexo = sexo;
              this.curso = curso;
              this.director_grupo = director_grupo;
              this.sede = sede;
              this.fecha_nacimiento = fecha_nacimiento;
              this.descripcion_inicial = descripcion_inicial;

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
                      "\nCurso: " + this.curso +
                      "\nDirector de Grupo: " + this.director_grupo +
                      "\nsede: " + this.sede +
                      "\nFecha de Nacimiento: " + this.fecha_nacimiento +
                      "\nDescripción: " + this.descripcion_inicial;

          }
          public override int GetHashCode()
          {
              return this.ToString().GetHashCode();
          }
          public override bool Equals(object obj)
          {
              Alumno o = (Alumno)obj;
              bool result = false;

              if ((this.id == o.id) &&
                  (this.tipo == o.tipo) &&
                  (this.identificacion == o.identificacion) &&
                  (this.nombres == o.nombres) &&
                  (this.sexo == o.sexo) &&
                  (this.curso == o.curso) &&
                  (this.director_grupo == o.director_grupo) &&
                  (this.sede == o.sede)&&
                  (this.fecha_nacimiento == o.fecha_nacimiento) &&
                  (this.descripcion_inicial == o.descripcion_inicial))

                  result = true;

              return result;
          }


        #endregion

    }
}