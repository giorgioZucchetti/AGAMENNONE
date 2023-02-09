using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAggiorna_Click(object sender, EventArgs e)
    {
        //Griglia.DataBind();
    }


    protected void Griglia_SelectedIndexChanged(object sender, EventArgs e)
    {
        //{
        //    if (Griglia.SelectedValue == null)
        //    {
        //        return;
        //    }
        //    Session["chiave"] = Griglia.SelectedValue.ToString();
        //}


        //if (Session["chiave"] == null)
        //{
        //    return;
        //}
        //string chiavegriglia = Session["chiave"].ToString();
        //if (String.IsNullOrEmpty(chiavegriglia))
        //{
        //    ClientScript.RegisterStartupScript(this.GetType(), "ERRORE",


    }
}