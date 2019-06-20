using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jins
{
    public partial class delete : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0N1R6GU\SQLEXPRESS;Initial Catalog=Sms2;Integrated Security=True");
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Delete";
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            
            Response.Redirect("Jinsa.aspx");
        }
    }
}