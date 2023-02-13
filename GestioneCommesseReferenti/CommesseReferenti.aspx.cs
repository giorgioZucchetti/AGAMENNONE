using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Griglia_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //mancano i controlli formali
        Session["chiave"] = Griglia.SelectedValue.ToString();
    }
}