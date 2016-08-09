using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AdminClt.Models
{
    public class Historia
    {

        #region "atributos"

        public int id;
        public string comentario;
        public string fecha_comentario;
        public int id_alumno;
        public int id_docente;

        #endregion

        #region "propiedades"

        public int ID
        {
            get { return id; }
            set { id = value; }
        }

        public string COMENTARIO
        {
            get { return comentario; }
            set { comentario = value; }
        }

       
        public string FECHA_COMENTARIO
        {
            get { return fecha_comentario; }
            set { fecha_comentario = value; }
        }

        public int ID_ALUMNO
        {
            get { return id_alumno; }
            set { id_alumno = value; }
        }
        public int ID_DOCENTE
        {
            get { return id_docente; }
            set { id_docente = value; }
        }


        #endregion

        #region "constructores"

          public Historia()
        {
            this.id = 000;
            this.comentario = ""; 
            this.fecha_comentario = "";
            this.id_alumno = 000;
            this.id_docente = 000;
        }

          public Historia(int id, string comentario, string fecha_comentario, int id_alumno, int id_docente)
          {
              this.id = id;
              this.comentario = comentario;
              this.fecha_comentario = fecha_comentario;
              this.id_alumno = id_alumno;
              this.id_docente = id_docente;
             
          }
    
        #endregion

          #region "metodos sobreescritos"

          public override string ToString()
          {
              return "Codigo: " + this.id +
                      "\nComentario: " + this.comentario +
                      "\nFecha de Comentario: " + this.fecha_comentario +
                      "\nCodigo de Alumno: " + this.id_alumno +
                      "\nCodigo Docente: " + this.id_docente;

          }
          public override int GetHashCode()
          {
              return this.ToString().GetHashCode();
          }
          public override bool Equals(object obj)
          {
              Historia o = (Historia)obj;
              bool result = false;

              if ((this.id == o.id) &&
                  (this.comentario == o.comentario) &&
                  (this.fecha_comentario == o.fecha_comentario) &&
                  (this.id_alumno == o.id_alumno) &&
                  (this.id_docente == o.id_docente))

                  result = true;

              return result;
          }


          #endregion
    }
}