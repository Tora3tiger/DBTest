using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_OnClick(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DEMO-PC\SQLEXPRESS2;Initial Catalog=sampleDB;Integrated Security=True;");

        con.Open();
        String str = "INSERT INTO “šˆÄƒf[ƒ^ VALUES (" + TextBox1.Text + ",'abc',1,1,1,'2000/1/1','n0',0)";
        SqlCommand cmd = new SqlCommand(str, con);
        int OBJ = Convert.ToInt32(cmd.ExecuteNonQuery());
        if (OBJ > 0)
        {
            Label3.Text = "Data is successfully inserted in database";
        }
        else
        {
            Label3.Text = "Data is not inserted in database";
        }
        con.Close();

    }
}

