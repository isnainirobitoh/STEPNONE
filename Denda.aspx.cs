using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STEPNONE
{
    public partial class Denda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection PerpusConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            PerpusConnect.Open();
            string upquery = "UPDATE [Peminjaman] SET Denda=Keterlambatan*1000" + "WHERE IdPeminjaman = '" + IdPeminjaman.Text + "'";
            SqlCommand update = new SqlCommand(upquery, PerpusConnect);
            update.ExecuteNonQuery();
            PerpusConnect.Close();
            Response.Redirect("Peminjaman.aspx");
        }
    }
}