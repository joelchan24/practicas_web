using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using DAO;

namespace proyecto_joelcasa
{
    public partial class frm_categorias : System.Web.UI.Page
    {
      
        vuelosDAO vuelo = new vuelosDAO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txt_fech_TextChanged(object sender, EventArgs e)
        {

        }
        

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            vuelo.guardar(mandar());
        }
        public categoriaBO mandar()
        {
            categoriaBO cat = new categoriaBO();
            int id = 0; int.TryParse(txt_id.Value, out id);
            cat.Id = id;
            cat.Nombre = txt_nom.Text;
            cat.Origen = txt_origen.Text;
            cat.Destino = txt_destino.Text;
            cat.Fecha = Convert.ToDateTime(txt_fech.Text);
            return cat;
        }

        protected void btn_eliminar_Click(object sender, EventArgs e)
        {
           
        }
    }
}