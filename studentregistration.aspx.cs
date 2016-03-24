using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

public partial class studentregistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         String name = TextBox1.Text;
            String id = TextBox2.Text;
            String password = TextBox3.Text;
            SqlConnection connection = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
            SqlCommand cmd;
            connection.Open();
            try
            {
                String path = @" C:\MinGW\bin\baba\"+name;
                if (!(Directory.Exists(path)))
                {
                    Directory.CreateDirectory(path);
                    Directory.CreateDirectory(path + "\\1st yr");
                    Directory.CreateDirectory(path + "\\2.1 ");
                    Directory.CreateDirectory(path + "\\2.2 ");
                    Directory.CreateDirectory(path + "\\3.1 ");
                    Directory.CreateDirectory(path + "\\3.2 ");
                    Directory.CreateDirectory(path + "\\4.1 ");
                    Directory.CreateDirectory(path + "\\4.2 ");
                    
                    TextBox4.Text = "Directory created!";
                }
                else
                {
                    TextBox4.Text=" already directory exists";
                }
                
                cmd = connection.CreateCommand();
                cmd.CommandText = "INSERT INTO student(name,ID,password,path)VALUES(@name,@id,@password,@path)";
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@id", TextBox2.Text);
                cmd.Parameters.AddWithValue("@password", TextBox3.Text);
                cmd.Parameters.AddWithValue("@path", path);

                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                Console.WriteLine("ID entered is already registered");
            }
            finally
            {
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                    
                }
            }
            
        }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
