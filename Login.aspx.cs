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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection PerpusConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            PerpusConnect.Open();
            string cekPegawai = "SELECT COUNT (*) FROM [Pegawai] WHERE username = '" + Username.Text + "'";
            SqlCommand query = new SqlCommand(cekPegawai,PerpusConnect);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            PerpusConnect.Close();
            if (jumlah == 1)
            {
                PerpusConnect.Open();
                string passwordsql = "SELECT password FROM [Pegawai] WHERE password = '" + Password.Text + "'";
                SqlCommand passquery = new SqlCommand(passwordsql, PerpusConnect);
                string password = passquery.ExecuteScalar().ToString();
                PerpusConnect.Close();
                if (password == Password.Text)
                {
                    //session
                    Response.Redirect("MenuUtama.aspx");
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