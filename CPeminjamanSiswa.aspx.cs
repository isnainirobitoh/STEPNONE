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
    public partial class CPeminjamanSiswa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection PerpusConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            PerpusConnect.Open();
            string cekBuku = "SELECT Jumlah FROM [Buku] WHERE IdBuku = '" + IdBuku.Text + "'";
            SqlCommand query = new SqlCommand(cekBuku, PerpusConnect);
            int cek = Convert.ToInt32(query.ExecuteScalar().ToString());
            PerpusConnect.Close();
            if (cek == 0)
            {
                Response.Write("Stok buku habis, silakan pilih buku lainnya");
            }
            else
            {
                PerpusConnect.Open();
                string updatequery = "UPDATE [Buku] SET Jumlah=Jumlah-1, SedangDipinjam=SedangDipinjam+1" + "WHERE IdBuku = '" + IdBuku.Text + "'";
                SqlCommand update = new SqlCommand(updatequery, PerpusConnect);
                string insert = "INSERT INTO [Peminjaman] (idbuku,nama,judul,kategori,status,tglpengembalian,tglpinjam) VALUES(@idbuku,@nama,@judul,@kategori,@status,@tglpengembalian,@tglpinjam)";
                SqlCommand insertquery = new SqlCommand(insert, PerpusConnect);
                insertquery.Parameters.AddWithValue("@idbuku", IdBuku.Text);
                insertquery.Parameters.AddWithValue("@nama", Nama.Text);
                insertquery.Parameters.AddWithValue("@judul", Judul.Text);
                insertquery.Parameters.AddWithValue("@kategori", Kategori.Text);
                insertquery.Parameters.AddWithValue("@status", Status.Text);
                insertquery.Parameters.AddWithValue("@tglpengembalian", TglKembali.Text);
                insertquery.Parameters.AddWithValue("@tglpinjam", TglPinjam.Text);
                insertquery.ExecuteNonQuery();
                PerpusConnect.Close();
                Response.Redirect("PeminjamanSiswa.aspx");
            }
        }
    }
}