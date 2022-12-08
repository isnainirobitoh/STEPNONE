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
    public partial class PengembalianSiswa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
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
                string upquery = "UPDATE [Buku] SET Jumlah=Jumlah+1, SedangDipinjam=SedangDipinjam-1" + "WHERE IdBuku = '" + IdBuku.Text + "'";
                SqlCommand update = new SqlCommand(upquery, PerpusConnect);
                string updatequery = "UPDATE [Peminjaman] SET Status = 'Selesai'" + "WHERE IdPeminjaman = '" + IdPeminjaman.Text + "'";
                SqlCommand ubahquery = new SqlCommand(updatequery, PerpusConnect);
                update.ExecuteNonQuery();
                ubahquery.ExecuteNonQuery();
                PerpusConnect.Close();
                Response.Redirect("PeminjamanSiswa.aspx");
            }
        }
    }
}