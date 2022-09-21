using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        hfDate.Value = DateTime.Now.ToShortDateString();

        // save image in project.
        string upath = Server.MapPath("users");
        String ppath = upath + "\\photos" + "\\" + fuphoto.FileName.ToString();
        fuphoto.SaveAs(ppath);

        SqlDataInsert.Insert();
        //lblmsg.Text = "Registration is Completed ! you Can Login Now !";

        Response.Redirect("Success.aspx");
    }
    protected void txtAdhar_TextChanged(object sender, EventArgs e)
    {
        if (checkAdhar(txtAdhar.Text))
        {
            txtAdhar.Focus();
            txtAdhar.Text="";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Adhar Number Already Registerd !')", true);
        }
        else
        {
            
        }
    }

    protected bool checkAdhar(string adhar)
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);

        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select adhar from Registration where name=@name and adhar=@adhar";
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@adhar", adhar);
        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        con.Close();
        if (obj == null)
        {
            return false;
        }
        else
        {
            return true;
        }

    }

}