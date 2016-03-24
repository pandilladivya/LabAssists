<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lecturerpart2.aspx.cs" Inherits="lecturerpart2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <style >
         body {
             background-color: black;
         }
         #form1 {
            z-index:999;
            top:203px;
            left:230px;
            
            padding:20px;
            background-color:rgba(220, 211, 211, 0.75);
            border-style:groove;
            border-radius:25px;
            position:absolute;
             height: 224px;
             width: 644px;
            margin-left: 0px;
        }
        p.text {
            color:white;
        }
         .d {
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
            left: 69px;
            top: 209px;
            position: absolute;
            right: 446px;
        }
         .c {
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
            left: 170px;
            top: 154px;
            position: absolute;
            right: 376px;
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
            left: 170px;
            top: 154px;
            position: absolute;
            right: 376px;
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
   
        <br />
&nbsp;&nbsp; Enter programs for today:
        <br />
        <br />
        program&nbsp; description: <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
&nbsp;&nbsp;&nbsp; program&nbsp; save name:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit program" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="c" ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="position: relative; z-index: 1; left: 830px; top: -271px" Text="Logout" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" />
        <br />
   
    </div>
&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Students List" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="d" ForeColor="Black" />
        <asp:Label ID="Label3" runat="server" Text="Label" style="z-index: 1; left: 274px; top: 209px; position: absolute; height: 24px; width: 70px"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 706px; top: 226px; position: absolute">
        </asp:DropDownList>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:labassistsConnectionString2 %>" SelectCommand="select name,ID,path from student;"></asp:SqlDataSource>
        <asp:Button ID="Button4" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px" CssClass="b" ForeColor="Black" OnClick="Button4_Click1" style="z-index: 1; left: 705px; top: -78px; position: absolute" Text="Previous page" />
        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" style="z-index: 1; left: -117px; top: 286px; position: absolute; height: 249px; width: 252px" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" style="z-index: 1; left: 220px; top: 288px; position: absolute; height: 239px; width: 249px" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Enabled="False" style="z-index: 1; left: 550px; top: 287px; position: absolute; height: 234px; width: 251px" TextMode="MultiLine"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" style="z-index: 1; left: -19px; top: 571px; position: absolute; height: 162px; width: 231px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                 <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" />
                 <asp:TemplateField HeaderText="path-link">
                     <ItemTemplate>
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Bind("path") %>' Text='<%# Eval("path") %>'></asp:HyperLink>
                     </ItemTemplate>
                 </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </form>
</body>
</html>
