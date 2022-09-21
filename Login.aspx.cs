using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        hfUser.Value = txtUser.Text;
        hfPwd.Value = txtPwd.Text;
        if (hfUser.Value == "admin" && hfPwd.Value == "admin")
        {
            Response.Redirect("admin/Default.aspx");
        }
        else
        {
            DataView dv = (DataView)SqlDataLogin.Select(new DataSourceSelectArguments());
            if (dv.Count == 1)
            {
                Session.Add("userid", hfUser.Value);
                Session.Add("pwd", hfPwd.Value);

                Response.Redirect("users/Default.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Username & Password')", true);
            }

        }
    }
}