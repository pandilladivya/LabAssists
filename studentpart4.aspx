<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentpart4.aspx.cs" Inherits="studentpart4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
      
         body {
             background-color: black;
         }
         #form1 {
            z-index:999;
            top:171px;
            left:150px;
            
            padding:20px;
            background-color:rgba(220, 211, 211, 0.75);
            border-style:groove;
            border-radius:25px;
            position:absolute;
             height: 637px;
             width: 841px;
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

        #Text1 {
            height: 362px;
            width: 279px;
            margin-left: 17px;
            margin-right: 0px;
        }
        #TextArea1 {
            height: 376px;
            width: 353px;
        }
    </style>
</head>
<body>
    <h1 class="h11">KESHAV MEMORIAL INSTITUTE OF TECHNOLOGY</h1>
    <h2 class="h22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Affiliated by JNTUH</h2>
    <h3 class="h33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Narayanguda,Hyderabad</h3>


    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 16px; top: 9px; position: absolute; height: 42px; width: 597px" TextMode="MultiLine"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button6" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" style="z-index: 1; left: 680px; top: 4px; position: absolute" Text="Previous page" OnClick="Button6_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 428px; top: 72px; position: absolute" Text="INPUT:"></asp:Label>
    
    </div>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="414px" TextMode="MultiLine" Width="331px" style="z-index: 1; left: 20px; top: 105px; position: absolute" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            &nbsp;<asp:TextBox ID="TextBox2" runat="server" style="position: absolute; z-index: 1; left: 379px; top: 99px; height: 187px; width: 282px; right: 170px; margin-left: 44px; margin-top: 0px; margin-bottom: 0px" TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="z-index: 1; left: 730px; top: 116px; position: absolute; width: 107px; bottom: 537px;" Text="Send Input" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" />
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 423px; top: 335px; position: absolute; height: 193px; width: 276px" TextMode="MultiLine"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 428px; top: 314px; position: absolute" Text="OUTPUT:"></asp:Label>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="z-index: 1; left: 724px; top: 363px; position: absolute" Text="Get OUTPUT" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" />
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 718px; top: 332px; position: absolute" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 20px; margin-bottom: 0px; z-index: 1; left: 20px; top: 621px; position: absolute;" Text="Compile" Width="75px" Height="25px" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 31px; z-index: 1; left: 113px; top: 622px; position: absolute;" Text="Save File" Width="89px" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" />
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" style="z-index: 1; left: 356px; top: 625px; position: absolute" AutoPostBack="True">
            </asp:DropDownList>
        </p>
        
        <p>
            <asp:Button ID="Button3" runat="server" Text="Logout" OnClick="Button3_Click" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" style="z-index: 1; left: 811px; top: 3px; position: absolute" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select program:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
