using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        griglia.DataBind();
    }

    protected void Griglia_SelectedIndexChanged(object sender, EventArgs e)
    {
        //mancano i controlli formali
        Session["chiave"] = griglia.SelectedValue.ToString();
    }

}




