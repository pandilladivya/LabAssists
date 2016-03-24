using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Diagnostics;
using System.Data.SqlClient;

public partial class lecturerpart2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        DropDownList1.Visible = false;
        Label3.Visible = false;
        if (!IsPostBack)
        {

            string date = "";
            date = DateTime.Today.ToString("MM/dd/yyyy");
            string mondt = Convert.ToInt32(date.Substring(0, 2)).ToString();
            string datedt = Convert.ToInt32(date.Substring(3, 2)).ToString();
            string strdate=mondt+"/"+datedt+"/"+date.Substring(6,4).ToString();


            DataTable subjects = new DataTable();
            using (SqlConnection con = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True"))
            {
                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT programname FROM programs WHERE date='"+ strdate + "';" , con);
                    adapter.Fill(subjects);

                    DropDownList1.DataSource = subjects;
                    DropDownList1.DataTextField = "programname";
                    DropDownList1.DataValueField = "programname";
                    DropDownList1.DataBind();
                }
                catch (Exception ex)
                {
                    Label4.Text = Convert.ToString(ex);
                }
            }
        }
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        DropDownList1.Visible = true;
        Label3.Visible = true;

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        string filename = "\\" + DropDownList1.SelectedItem.Text;
        DropDownList1.Visible = true;
        Label3.Visible = true;
        string filenamec = "\\1st yr\\"+filename+".c";
        string filenameexe = "\\1st yr\\" + filename + ".exe";
        string inputfilename = "\\1st yr\\"+filename+"input.txt";
        string outputfilename = "\\1st yr\\" + filename + "output.txt";
        string pathforfile1 = GridView1.SelectedRow.Cells[3].Text + filenamec;
        Label3.Text = pathforfile1;
        string pathforfile2 = GridView1.SelectedRow.Cells[3].Text + filenameexe;
        string pathforinputfile = GridView1.SelectedRow.Cells[3].Text + inputfilename;
        string pathforoutputfile = GridView1.SelectedRow.Cells[3].Text + outputfilename;
        if (System.IO.File.Exists(pathforfile1) && System.IO.File.Exists(pathforfile2))
        {
            
            string creader = File.ReadAllText(pathforfile1);
            TextBox3.Text = creader;
            string inputreader = File.ReadAllText(pathforinputfile);
            TextBox4.Text = inputreader;
            string outputreader = File.ReadAllText(pathforoutputfile);
            TextBox5.Text = outputreader;

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('.c file found and .exe file found')</script>");
        }
        if (System.IO.File.Exists(pathforfile1) && !(System.IO.File.Exists(pathforfile2)))
        {
            string creader = File.ReadAllText(pathforfile1);
            TextBox3.Text = creader;

            
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('.c file found and .exe file not found')</script>");
        }
        if (!(System.IO.File.Exists(pathforfile1)) && System.IO.File.Exists(pathforfile2))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('.c file not found and .exe file found')</script>");
           // string inputreader = File.ReadAllText(pathforinputfile);
            //TextBox4.Text = inputreader;
            //string outputreader = File.ReadAllText(pathforoutputfile);
            //TextBox5.Text = outputreader;
        }
        if (!(System.IO.File.Exists(pathforfile1)) && !(System.IO.File.Exists(pathforfile2)))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('.c file not found and .exe file not found')</script>");
            //string inputreader = File.ReadAllText(pathforinputfile);
            //TextBox4.Text = inputreader;
            //string outputreader = File.ReadAllText(pathforoutputfile);
            //TextBox5.Text = outputreader;
        }


        }
    protected void Button2_Click(object sender, EventArgs e)
 {
     string date = "";
     date = DateTime.Today.ToString("MM/dd/yyyy");
     string mondt = Convert.ToInt32(date.Substring(0, 2)).ToString();
     string datedt = Convert.ToInt32(date.Substring(3, 2)).ToString();
     string strdate = mondt + "/" + datedt + "/" + date.Substring(6, 4).ToString();
     string pdes = TextBox1.Text;
     string pshort = TextBox2.Text;


     SqlConnection connection = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
     SqlCommand cmd;
     connection.Open();
     try
     {

         cmd = connection.CreateCommand();
         cmd.CommandText = "INSERT INTO programs(date,programdes,programname)VALUES(@strdate,@programdes,@programname)";
         cmd.Parameters.AddWithValue("@strdate", strdate);
         cmd.Parameters.AddWithValue("@programdes", TextBox1.Text);
         cmd.Parameters.AddWithValue("@programname", TextBox2.Text);
         cmd.ExecuteNonQuery();
         Label4.Text = "INSERTION SUCCESFUL!";
     }
     catch (Exception f)
     {
         Console.WriteLine(f);
         Label4.Text = "INSERTION FAILED";
         throw;
     }
     finally
     {
         if (connection.State == System.Data.ConnectionState.Open)
         {
             connection.Close();

         }
     }

 }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");

    }

   

    protected void Button4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("lecturerpart1.aspx");
    }
}
