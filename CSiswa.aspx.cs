using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace STEPNONE
{
    public partial class CSiswa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection PerpusConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            PerpusConnect.Open();
            string cekPegawai = "SELECT COUNT (*) FROM [Siswa] WHERE username = '" + Username.Text + "'";
            SqlCommand query = new SqlCommand(cekPegawai, PerpusConnect);
            int cek = Convert.ToInt32(query.ExecuteScalar().ToString());
            PerpusConnect.Close();
            if (cek != 0)
            {
                Response.Write("Username sudah digunakan!");
            }
            else
            {
                PerpusConnect.Open();
                string insert = "INSERT INTO [Siswa] (username,password,nama,nohp,alamat) VALUES(@username,@password,@nama,@nohp,@alamat)";
                SqlCommand insertquery = new SqlCommand(insert, PerpusConnect);
                insertquery.Parameters.AddWithValue("@username", Username.Text);
                insertquery.Parameters.AddWithValue("@password", Password.Text);
                insertquery.Parameters.AddWithValue("@nama", Nama.Text);
                insertquery.Parameters.AddWithValue("@nohp", NoHP.Text);
                insertquery.Parameters.AddWithValue("@alamat", Alamat.Text);
                insertquery.ExecuteNonQuery();
                PerpusConnect.Close();
                Response.Redirect("Siswa.aspx");
            }
        }
    }
}