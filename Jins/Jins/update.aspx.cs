using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jins
{
    public partial class update : System.Web.UI.Page
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

            if (IsPostBack) return;
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            Session["id"] = id;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "fillback";
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            foreach(DataRow dr in dt.Rows)
            {
                txtName.Text = dr["name"].ToString();
                txtEmail.Text = dr["email"].ToString();
                txtPhone.Text = dr["phone"].ToString();
                txtAddress.Text = dr["address"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "update";
            cmd.Parameters.AddWithValue("@id",Convert.ToInt32(Session["id"].ToString()));
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@address", txtAddress.Text);
            cmd.ExecuteNonQuery();
            error.Style.Add("display","block");
            Response.Redirect("Jinsa.aspx");
        }
    }
}