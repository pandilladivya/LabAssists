using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lecturerpart1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("lecturerpart2.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("lecturerpart3.aspx");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("lecturerpart4.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("lecturerpart5.aspx");
    }
}