<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lecturerpart1.aspx.cs" Inherits="lecturerpart1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style >
         body {
             background-color: black;
         }
         #form1 {
            z-index:999;
            top:219px;
            left:416px;
            
            padding:20px;
            background-color:rgba(220, 211, 211, 0.75);
            border-style:groove;
            border-radius:25px;
            position:absolute;
             height: 436px;
             width: 262px;
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
background: rgb(226,226,226); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e2e2e2', endColorstr='#fefefe',GradientType=0 ); /* IE6-9 */

            color: antiquewhite;
            z-index: 1;
            left: 419px;
            top: -59px;
            position: absolute;
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
    <h1 class="h11">&nbsp;&nbsp;&nbsp;&nbsp; KESHAV MEMORIAL INSTITUTE OF TECHNOLOGY</h1>
    <h2 class="h22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Affiliated by JNTUH</h2>
    <h3 class="h33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Narayanguda,Hyderabad</h3>


    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Logout" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" />
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="position: relative; top: -31px; left: 53px; z-index: 1; height: 57px; width: 152px" Text="Submissions" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 52px; z-index: 1; left: 73px; top: 168px; position: absolute; width: 153px" Text="Viva" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" />
            <asp:Button ID="Button4" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" OnClick="Button4_Click" style="z-index: 1; left: 72px; top: 280px; position: absolute; height: 58px; width: 158px" Text="programs" />
            <asp:Button ID="Button5" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" OnClick="Button5_Click" style="z-index: 1; left: 71px; top: 381px; position: absolute; height: 58px; width: 158px" Text="viva marks" />
        </p>
    </form>
</body>
</html>
