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
    public partial class LoginSiswa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection PerpusConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            PerpusConnect.Open();
            string cekSiswa = "SELECT COUNT (*) FROM [Siswa] WHERE username = '" + Username.Text + "'";
            SqlCommand query = new SqlCommand(cekSiswa, PerpusConnect);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            PerpusConnect.Close();
            if (jumlah == 1)
            {
                PerpusConnect.Open();
                string passwordsql = "SELECT password FROM [Siswa] WHERE password = '" + Password.Text + "'";
                SqlCommand passquery = new SqlCommand(passwordsql, PerpusConnect);
                string password = passquery.ExecuteScalar().ToString();
                PerpusConnect.Close();
                if (password == Password.Text)
                {
                    //session
                    Response.Redirect("MenuSiswa.aspx");
                }
                else
                {
                    Response.Write("Password salah!");
                }
            }
            else
            {
                Response.Write("Username tidak ditemukan!");
            }
        }
    }
}