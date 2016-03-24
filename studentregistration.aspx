<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentregistration.aspx.cs" Inherits="studentregistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <style>
        body {
             background-color: black;
         }
         #form1 {
            z-index:999;
            top:197px;
            left:417px;
            
            padding:20px;
            background-color:rgba(220, 211, 211, 0.75);
            border-style:groove;
            border-radius:25px;
            position:absolute;
             height: 251px;
             width: 283px;
         }
        p.text {
            color:white;
        }
        .b {
            border-radius:33px;
             border:1px solid #999999;
            background: rgb(226,226,226); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(226,226,226,1) 0%, rgba(219,219,219,1) 50%, rgba(209,209,209,1) 51%, rgba(254,254,254,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(226,226,226,1)), color-stop(50%,rgba(219,219,219,1)), color-stop(51%,rgba(209,209,209,1)), color-stop(100%,rgba(254,254,254,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(226,226,226,1) 0%,rgba(219,219,219,1) 50%,rgba(209,209,209,1) 51%,rgba(254,254,254,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(226,226,226,1) 0%,rgba(219,219,219,1) 50%,rgba(209,209,209,1) 51%,rgba(254,254,254,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(226,226,226,1) 0%,rgba(219,219,219,1) 50%,rgba(209,209,209,1) 51%,rgba(254,254,254,1) 100%); /* IE10+ */
background: linear-gradient(to bottom,  rgba(226,226,226,1) 0%,rgba(219,219,219,1) 50%,rgba(209,209,209,1) 51%,rgba(254,254,254,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e2e2e2', endColorstr='#fefefe',GradientType=0 ); /* IE6-9 */

            color: antiquewhite;
        }
        .h11 {
             z-index:1500;
            top:8px;
            left:147px;
           color: white;
          
           padding:20px;
    
        position:absolute;
            height: 22px;
            bottom: 263px;
             width: 914px;
         }
       .h22 {
             z-index:1500;
            top:62px;
            left:275px;
           color: white;
          
           padding:20px;
    
        position:absolute;
            width: 543px;
        }
       .h33 {
             z-index:1500;
            top:105px;
            left:280px;
           color: white;
          
           padding:20px;
    
        position:absolute;
        }





    </style>
    
         
    <title></title>
</head>
<body>
     <h1 class="h11">KESHAV MEMORIAL INSTITUTE OF TECHNOLOGY</h1>
    <h2 class="h22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Affiliated by JNTUH</h2>
    <h3 class="h33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Narayanguda,Hyderabad</h3>

    <form id="form1" runat="server">
    <div>
    
    </div>
        Name:<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 31px" Width="116px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        ID:<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 51px; margin-top: 19px"></asp:TextBox>
        <br />
        Password:<asp:TextBox ID="TextBox3" runat="server" style="margin-left: 6px; margin-top: 16px" Width="132px" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 38px" Text="Register" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="2px" CssClass="b" ForeColor="Black" />
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" BorderWidth="2px" CssClass="b" ForeColor="Black" OnClick="Button2_Click" style="z-index: 1; left: 445px; top: -116px; position: absolute" Text="previous pagee" />
    </form>
</body>
</html>
