using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AdminClt.Models
{
    public class Contacto
    {

        #region "atributos"

        public int id;
        public string motivo;
        public string mensaje;
        public string fecha_mensaje;
        public int id_docente;

        #endregion

        #region "propiedades"

        public int ID
        {
            get { return id; }
            set { id = value; }
        }

        public string MOTIVO
        {
            get { return motivo; }
            set { motivo = value; }
        }

        public string MENSAJE
        {
            get { return mensaje; }
            set { mensaje = value; }
        }
        public string FECHA_MENSAJE
        {
            get { return fecha_mensaje; }
            set { fecha_mensaje = value; }
        }
        public int ID_DOCENTE
        {
            get { return id_docente; }
            set { id_docente = value; }
        }

        



        #endregion

        #region "constructores"

          public Contacto()
        {
            this.id = 000;
            this.motivo = ""; 
            this.mensaje = "";
            this.fecha_mensaje = "";
            this.id_docente = 000;
        }

          public Contacto (int id, string motivo, string mensaje, string fecha_mensaje, int id_docente)
          {
              this.id = id;
              this.motivo = motivo;
              this.mensaje = mensaje;
              this.fecha_mensaje = fecha_mensaje;
              this.id_docente = id_docente;
             
          }
    
        #endregion

          #region "metodos sobreescritos"

          public override string ToString()
          {
              return "Codigo: " + this.id +
                      "\nMotivo: " + this.motivo +
                      "\nMensaje: " + this.mensaje +
                      "\nFecha de mensaje: " + this.fecha_mensaje +
                      "\nCodigo Docente: " + this.id_docente;

          }
          public override int GetHashCode()
          {
              return this.ToString().GetHashCode();
          }
          public override bool Equals(object obj)
          {
              Contacto o = (Contacto)obj;
              bool result = false;

              if ((this.id == o.id) &&
                  (this.motivo == o.motivo) &&
                  (this.mensaje == o.mensaje) &&
                  (this.fecha_mensaje == o.fecha_mensaje) &&
                  (this.id_docente == o.id_docente))

                  result = true;

              return result;
          }


          #endregion
    }
}