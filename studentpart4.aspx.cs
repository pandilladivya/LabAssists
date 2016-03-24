using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Diagnostics;
public partial class studentpart4 : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string date = "";
            date = DateTime.Today.ToString("MM/dd/yyyy");
            string mondt = Convert.ToInt32(date.Substring(0, 2)).ToString();
            string datedt = Convert.ToInt32(date.Substring(3, 2)).ToString();
            string strdate = mondt + "/" + datedt + "/" + date.Substring(6, 4).ToString();
            
            DataTable subjects = new DataTable();

            using (SqlConnection con = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True"))
            {

                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT programname FROM programs WHERE date='" + strdate + "';", con);
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
        //savefile
        String filename = "\\1st yr" + "\\" + DropDownList1.SelectedItem.Text;
        string savename = filename + ".c";

        String LogID = Convert.ToString(Session["test"]);
        SqlConnection connection = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        SqlCommand cmd;
        connection.Open();
        cmd = connection.CreateCommand();
        string file_name = "";
        cmd.CommandText = "Select path from student where ID='" + LogID + "'";
        SqlDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            file_name = rdr.GetValue(0).ToString() + savename;
        }

        System.IO.StreamWriter objWriter;
        objWriter = new System.IO.StreamWriter(file_name);
        objWriter.Write(TextBox1.Text);
        objWriter.Close();
  }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //compile
        String LogID = Convert.ToString(Session["test"]);
        String filename = DropDownList1.SelectedItem.Text;
        string savename = filename + ".c";


        SqlConnection connection = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        SqlCommand cmd;
        connection.Open();
        cmd = connection.CreateCommand();
        string file_name = "";
        cmd.CommandText = "Select path from student where ID='" + LogID + "'";
        SqlDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            file_name = rdr.GetValue(0).ToString();
        }
        string path = file_name + "\\1st yr";
        Environment.CurrentDirectory = path;
        ProcessStartInfo startinfo = new ProcessStartInfo();
        //startinfo.WorkingDirectory ="@"+file_name;              
        startinfo.FileName = "cmd.exe";

        startinfo.Arguments = @"/k gcc -o " + filename + ".exe " + filename + ".c & " + filename + ".exe";

        Process.Start(startinfo);
        /*  Process compiler = new Process();
          compiler.StartInfo = startinfo;
          compiler.Start();
          compiler.Close(); */
          


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //logout
        Response.Redirect("login.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        SqlCommand cmd;
        connection.Open();
        cmd = connection.CreateCommand();
        string filename = DropDownList1.SelectedItem.Text;
        cmd.CommandText = "Select programdes from programs where programname='" + filename + "'";
        string programdescription = "";
        SqlDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            programdescription = rdr.GetValue(0).ToString();
        }
        TextBox4.Text = programdescription;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //send input
        String filename = DropDownList1.SelectedItem.Text;
        string savename = filename + ".c";


        String LogID = Convert.ToString(Session["test"]);
        SqlConnection connection = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        SqlCommand cmd;
        connection.Open();
        cmd = connection.CreateCommand();
        string path = "";
        string file_name = "";
        string input_filename = "";
        string output_filename = "";
        cmd.CommandText = "Select path from student where ID='" + LogID + "'";
        SqlDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            path = rdr.GetValue(0).ToString() + "\\1st yr";
        }
        input_filename = filename + "input.txt";
        output_filename = filename + "output.txt";
        file_name = path + "\\" + input_filename;
        System.IO.StreamWriter objWriter;
        objWriter = new System.IO.StreamWriter(file_name);
        objWriter.Write(TextBox2.Text);
        objWriter.Close();
        Environment.CurrentDirectory = path;
        ProcessStartInfo startinfo = new ProcessStartInfo();
        //startinfo.WorkingDirectory ="@"+file_name;              
        startinfo.FileName = "cmd.exe";

        startinfo.Arguments = @"/c (" + filename + ".exe<" + input_filename + ")>" + output_filename;

        Process.Start(startinfo);


    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //get output
        String filename = DropDownList1.SelectedItem.Text;
        string savename = filename + ".c";

        string path = "";
        string file_name = "";
        string output_filename = "";
        output_filename = filename + "output.txt";
        String LogID = Convert.ToString(Session["test"]);
        SqlConnection connection = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        SqlCommand cmd;
        connection.Open();
        cmd = connection.CreateCommand();
        cmd.CommandText = "Select path from student where ID='" + LogID + "'";
        SqlDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            path = rdr.GetValue(0).ToString() + "\\1st yr";
        }
        file_name = path + "\\" + output_filename;
        string txt = File.ReadAllText(file_name);
        TextBox3.Text = txt;
           
            
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //previous page
        Response.Redirect("studentpart2.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    
}