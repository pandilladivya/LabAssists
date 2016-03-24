using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Diagnostics;
using System.Data;

public partial class studentpart5 : System.Web.UI.Page
{
    static int count = 0;
    static int marks = 0;
    string answer = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string date = "";
            date = DateTime.Today.ToString("MM/dd/yyyy");
            string mondt = Convert.ToInt32(date.Substring(0, 2)).ToString();
            string datedt = Convert.ToInt32(date.Substring(3, 2)).ToString();
            string strdate = date.Substring(6, 4) + "-" + mondt + "-" + datedt.ToString();

            DataTable subjects = new DataTable();

            using (SqlConnection con = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True"))
            {

                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT testid FROM questions WHERE date='" + strdate + "';", con);
                    adapter.Fill(subjects);

                    DropDownList1.DataSource = subjects;
                    DropDownList1.DataTextField = "testid";
                    DropDownList1.DataValueField = "testid";
                    DropDownList1.DataBind();
                }
                catch (Exception ex)
                {
                    Label4.Text = Convert.ToString(ex);

                }

            }


        }
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        //finish
        try
        {

            String LogID = Convert.ToString(Session["test"]);

            SqlConnection con = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
            con.Open();
            string testid = DropDownList1.SelectedValue.ToString();
            string date = "";
            date = DateTime.Today.ToString("MM/dd/yyyy");
            string mondt = Convert.ToInt32(date.Substring(0, 2)).ToString();
            string datedt = Convert.ToInt32(date.Substring(3, 2)).ToString();
            string strdate = mondt + "/" + datedt + "/" + date.Substring(6, 4).ToString();


            string str1 = "insert into vivamarks values('"+testid+"','" + LogID + "','" + strdate + "','" + marks + "')";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception )
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('you have already taken the test,your marks wont be recorded for 2nd time')</script>");
        }


        Label3.Text = marks.ToString();
        // Response.Redirect("studentpart2.aspx");
      /*  */
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //next
        CheckBox1.Checked = false;
       
        count++;
        SqlConnection con = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        con.Open();
        string testid = DropDownList1.SelectedValue.ToString();
        string str = "select quesno,ques,option1,option2,option3,option4,ans from questions where quesno=" + count + "and testid= '" + testid + "'";
        SqlCommand cmd1 = new SqlCommand(str, con);
        cmd1.ExecuteNonQuery();

        SqlDataReader reader = cmd1.ExecuteReader();

        while (reader.Read())
        {
            Label1.Text = reader.GetValue(0).ToString();
            Label2.Text = reader.GetString(1);
            RadioButton1.Text = reader.GetString(2);
            RadioButton2.Text = reader.GetString(3);
            RadioButton3.Text = reader.GetString(4);
            RadioButton4.Text = reader.GetString(5);
            answer = reader.GetString(6);

        }
        con.Close();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        con.Open();
        string testid = DropDownList1.SelectedValue.ToString();
        string str = "select ans from questions where quesno=" + count + " and testid='"+testid+"' ; ";
        SqlCommand cmd1 = new SqlCommand(str, con);
        cmd1.ExecuteNonQuery();

        SqlDataReader reader = cmd1.ExecuteReader();

        while (reader.Read())
        {
            answer = reader.GetString(0);
        }
        RadioButton rb = null;
        if (RadioButton1.Checked == true)
        {
            rb = RadioButton1;
            if (rb.Text.Equals(answer))
            {

                marks++;
            }
        }

        else if (RadioButton2.Checked == true)
        {
            rb = RadioButton2;
            if (rb.Text.Equals(answer))
            {

                marks++;
            }
        }
        else if (RadioButton3.Checked == true)
        {
            rb = RadioButton3;
            if (rb.Text.Equals(answer))
            {

                marks++;
            }
        }
        else if (RadioButton4.Checked == true)
        {
            rb = RadioButton4;
            if (rb.Text.Equals(answer))
            {

                marks++;
            }
        }
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //start
        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        RadioButton1.Visible = true;
        RadioButton2.Visible = true;
        RadioButton3.Visible = true;
        RadioButton4.Visible = true;
        count++;
        string testid = DropDownList1.SelectedValue.ToString();
        SqlConnection con = new SqlConnection("Data Source=manu-PC;Initial Catalog=labassists;Integrated Security=True");
        con.Open();
        string str = "select quesno,ques,option1,option2,option3,option4,ans from questions where quesno=" + count + "and testid= '"+testid+"';";
        SqlCommand cmd1 = new SqlCommand(str, con);
        cmd1.ExecuteNonQuery();

        SqlDataReader reader = cmd1.ExecuteReader();

        while (reader.Read())
        {
            Label1.Text =     reader.GetValue(0).ToString();
            Label2.Text = reader.GetString(1);
            RadioButton1.Text = reader.GetString(2);
            RadioButton2.Text = reader.GetString(3);
            RadioButton3.Text = reader.GetString(4);
            RadioButton4.Text = reader.GetString(5);
            answer = reader.GetString(6);
           
       }
        con.Close();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        RadioButton1.Visible = true;
        RadioButton2.Visible = true;
        RadioButton3.Visible = true;
        RadioButton4.Visible = true;
        Response.Redirect("login.aspx");

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentpart2.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
