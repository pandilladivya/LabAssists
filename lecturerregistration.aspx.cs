using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

public partial class lecturerregistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gmail = TextBox1.Text;
        string password = TextBox2.Text;
        SqlConnection connection = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        SqlCommand cmd;
        connection.Open();
        try
        {

            cmd = connection.CreateCommand();
            cmd.CommandText = "INSERT INTO lecturer(gmail,password)VALUES(@gmail,@password)";
            cmd.Parameters.AddWithValue("@gmail", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Registration succesful!!";
        }
        catch (Exception)
        {
            Label1.Text = "ID entered is already registered";
        }
        finally
        {
            if (connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();

            }
        }
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}