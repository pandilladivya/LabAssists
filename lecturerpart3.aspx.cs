using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class lecturerpart3 : System.Web.UI.Page
{
    DateTime date;
   static  int count=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        count++;
        Label4.Text = ""+count;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
            con.Open();
            date = DateTime.Now;
            string str1 = "insert into questions values('" + TextBox8.Text + "','" + TextBox6.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox7.Text + "','" + date + "'," + (count - 1) + ");";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            // Label4.Text = "" + count;
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            // Label4.Text = " ";
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('testid already exists  delete it first or create another testid')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "finished sucesfully";
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("lecturerpart1.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        int i = 0;
            SqlConnection con = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
            con.Open();

            string str1 = "DELETE from questions where testid='" + TextBox9.Text + "';";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            i=cmd1.ExecuteNonQuery();
            con.Close();
            if (i == 0)
            {

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('testid dosen't exists')</script>");
            }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
            con.Open();

            string date = TextBox11.Text;



            string mondt = Convert.ToInt32(date.Substring(0, 2)).ToString();
            string datedt = Convert.ToInt32(date.Substring(3, 2)).ToString();
            string strdate = date.Substring(6, 4) + "-" + mondt + "-" + datedt.ToString();


            string str1 = "UPDATE questions set date='" + strdate + "' where testid='" + TextBox10.Text + "';";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            TextBox11.Text = "";
            TextBox10.Text = "";
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('testid dosent exists')</script>");
        }


    }
}