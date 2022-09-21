<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
   
    <tr>
            <td bgcolor="#336699">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/web_img/registration.png" 
                    Width="40px" />
            </td>
            <td bgcolor="#336699">
                <asp:Label ID="Label1" runat="server" Text="New User Registration" Font-Size="Large" 
                    ForeColor="#3366CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 22px" bgcolor="#009999" colspan="2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#3366CC" 
                    Text="Personal Details"></asp:Label>
            </td>
        </tr>

    <tr>
        <td>
            Name</td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txtname" ErrorMessage="RegularExpressionValidator" 
                ForeColor="#FF3300" ValidationExpression="[a-zA-Z ]*$">Must be in Alphabets</asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
        <td>
            City</td>
        <td>
            <asp:TextBox ID="txtcity" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Mobile</td>
        <td>
            <asp:TextBox ID="txtmob" runat="server" Width="300px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txtmob" Display="Dynamic" 
                ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                ValidationExpression="\d{10}">Must be proper format</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            Email</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Address</td>
        <td>
            <asp:TextBox ID="txtadd" runat="server" Height="47px" TextMode="MultiLine" 
                Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Occupation</td>
        <td>
            <asp:TextBox ID="txtocc" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#009999" colspan="2">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#3366CC" 
                Text="Authentication Details"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Username</td>
        <td>
            <asp:TextBox ID="txtusername" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtusername" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Password</td>
        <td>
            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtpwd" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Photo</td>
        <td>
            <asp:FileUpload ID="fuphoto" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
          

                
            <asp:Button ID="btnRegister" runat="server" Text="Register Now" 
                class="login-button reg-btn" onclick="btnRegister_Click" />
        </td>
    </tr>
    <tr>
        <td class="style1" style="height: 22px">
            </td>
        <td class="style1" style="height: 22px">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                HeaderText="Error" ShowMessageBox="True" />
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
        </td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
</table>



    <div>
    
    </div>
    </form>
</body>
</html>
