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
            if (!IsPostBack)
            {

                refrescar();


            }

            }
        public void refrescar()
        {
            GridView1.DataSource = vuelo.mostra().Tables[0];
            GridView1.DataBind();
        }


        protected void txt_fech_TextChanged(object sender, EventArgs e)
        {

        }
        

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            vuelo.guardar(mandar());
            Response.Write("<script>window.alert('Bien hecho');</script>");
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

        protected void guardar(object sender, EventArgs e)
        {
           
                vuelo.guardar(mandar());
                Response.Write("<script>window.alert('Bien hecho');</script>");
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            vuelo.guardar(mandar());
        }
    }
}