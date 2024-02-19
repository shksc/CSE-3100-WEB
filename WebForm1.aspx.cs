using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;

namespace LogIn
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        String cs = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;

        protected void login_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(cs);
            string query = "select * from Login where username= @user and password=@pass;";
            SqlCommand cmd=new SqlCommand(query, conn);

            cmd.Parameters.AddWithValue("@user", user.Text);
            cmd.Parameters.AddWithValue("@pass", pass.Text);

            conn.Open();
            SqlDataReader dr= cmd.ExecuteReader();
            if(dr.HasRows)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Login Successfull')</script>");
            }
            else
            {     RequiredFieldValidator1.ErrorMessage = "wrong username";
                RequiredFieldValidator1.IsValid = false;

                /*Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Login unsuccessfull')</script>");
*/
            }
            conn.Close();
        }
    }
}