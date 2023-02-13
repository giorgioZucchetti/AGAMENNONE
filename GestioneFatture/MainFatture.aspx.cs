using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Griglia.DataSourceID = SqlDataSource1.ID;
        Griglia.DataBind();
    }




    protected void btnCercaIntervallo_Click(object sender, EventArgs e)
    {
        Griglia.DataSourceID = SqlDataSource2.ID;
        Griglia.DataBind();
    }





    protected void btnCercaPeriodo_Click(object sender, EventArgs e)
    {
        if (ddlMESE.SelectedValue.ToString() == "")
        {

            Griglia.DataSourceID = SqlDataSource3.ID;
            Griglia.DataBind();
        }
        else
        Griglia.DataSourceID = SqlDataSource4.ID;
        Griglia.DataBind();
    }

    protected void btnCercaSaldo_Click(object sender, EventArgs e)
    {
        Griglia.DataSourceID = SqlDataSource5.ID;
        Griglia.DataBind();
    }

    protected void Griglia_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["chiave"] = Griglia.SelectedValue.ToString();
    }
}
