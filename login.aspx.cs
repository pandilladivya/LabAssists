using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Diagnostics;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;
        SqlConnection connection = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        SqlCommand cmd;
        connection.Open();
        cmd = connection.CreateCommand();
        cmd.CommandText = "Select ID,password from student";
        SqlDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            if (TextBox1.Text == Convert.ToString(rdr.GetValue(0)) && TextBox2.Text == Convert.ToString(rdr.GetValue(1)))
            {
                Session["Test"] = TextBox1.Text;
                Response.Redirect("studentpart1.aspx");
                flag = 1;
                Label1.Text = "Login succesful";
                break;
            }
        }
        if (flag == 0)
        {
            Label1.Text = "Login failed!!";
        }




    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentRegistration.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("LecturerRegistration.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int flag = 0;
        SqlConnection connection = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        SqlCommand cmd;
        connection.Open();
        cmd = connection.CreateCommand();
        cmd.CommandText = "Select gmail,password from lecturer";
        SqlDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            if (TextBox3.Text == Convert.ToString(rdr.GetValue(0)) && TextBox4.Text == Convert.ToString(rdr.GetValue(1)))
            {

                Label2.Text = "Login succesful";
                Response.Redirect("lecturerpart1.aspx");
                flag = 1;
                break;
            }
            if (TextBox3.Text == Convert.ToString(rdr.GetValue(0)) && !(TextBox4.Text == Convert.ToString(rdr.GetValue(1))))
            {

                flag = 3;
                break;
            }
        }
        if (flag == 0)
        {
            Label2.Text = "Login failed!!";
        }
        if (flag == 3)
        {
            Label2.Text = "User already registered! but the password entered is wrong";
        }

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}