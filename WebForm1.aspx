<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="counterQueue.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <table style="font-family:Arial; border:1px solid black; text-align:center ">
           <tr>
               <td>
                   <b>Counter 1</b>
               </td>
               <td>

               </td>
               <td>
                   <b>Counter 2</b>
               </td>
               <td>

               </td>
               <td>
                   <b>Counter 3</b>
               </td>
           </tr>

            <tr>
               <td>
                   <asp:TextBox ID="txtCounter1" runat="server" BackColor="Blue" Font-Size="Large" ForeColor="White" Width="150px"></asp:TextBox>
               </td>
               <td>

               </td>
               <td>
                  <asp:TextBox ID="txtCounter2" runat="server" BackColor="Blue" Font-Size="Large" ForeColor="White" Width="150px"></asp:TextBox>
               </td>
               <td>

               </td>
               <td>
                   <asp:TextBox ID="txtCounter3" runat="server" BackColor="Blue" Font-Size="Large" ForeColor="White" Width="150px"></asp:TextBox>
               </td>
           </tr>

            <tr>
               <td>
                   <asp:Button ID="btn1" runat="server" Text="Next" Width="150px" OnClick="btn1_Click" />
               </td>
               <td>

               </td>
               <td>
                    <asp:Button ID="btn2" runat="server" Text="Next" Width="150px" OnClick="btn2_Click" />
               </td>
               <td>

               </td>
               <td>
                    <asp:Button ID="btn3" runat="server" Text="Next" Width="150px" OnClick="btn3_Click" />
               </td>
           </tr>
           <tr>
               <td colspan ="5">
                   <asp:TextBox ID="txtDisplay" runat="server" BackColor="#33CC33" Font-Size="Large" ForeColor="White" Width="500px"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td colspan="5">
                   <asp:ListBox ID="txtListbox" runat="server" Font-Size="Large"></asp:ListBox>
               </td>
           </tr>

           
           <tr>
               <td colspan="5">
                   <asp:Button ID="btnPrinttoken" runat="server" Text="Print token" OnClick="btnPrinttoken_Click" />
               </td>
           </tr>

           
           <tr>
               <td colspan="5">
                   <asp:Label ID="lblStatus" runat="server" Text="Label" Font-Size="Large"></asp:Label>
               </td>
           </tr>

          
       </table>
    </form>
</body>
</html>
