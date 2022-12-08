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
    public partial class CBuku : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection PerpusConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            PerpusConnect.Open();
            string insert = "INSERT INTO [Buku] (judul,penulis,kategori,jumlah) VALUES(@judul,@penulis,@kategori,@jumlah)";
            SqlCommand insertquery = new SqlCommand(insert, PerpusConnect);
            insertquery.Parameters.AddWithValue("@judul", Judul.Text);
            insertquery.Parameters.AddWithValue("@penulis", Penulis.Text);
            insertquery.Parameters.AddWithValue("@kategori", Kategori.Text);
            insertquery.Parameters.AddWithValue("@jumlah", Jumlah.Text);
            insertquery.ExecuteNonQuery();
            PerpusConnect.Close();
            Response.Redirect("Buku.aspx");
        }
    }
}