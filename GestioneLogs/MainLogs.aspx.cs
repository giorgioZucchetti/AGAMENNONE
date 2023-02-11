using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        grdAccessi.DataSourceID = SqlDataSource1.ID;
        grdAccessi.DataBind();
        grdEventi.DataSourceID = SqlDataSource3.ID;
        grdEventi.DataBind();
    }

    protected void btnCerca_Click(object sender, EventArgs e)
    {
        grdAccessi.DataSourceID = SqlDataSource2.ID;
        grdAccessi.DataBind();

    }

    protected void btnCancella_Click(object sender, EventArgs e)
    {
    
        ACCESSI A=new ACCESSI();
        A.ACCESSI_DeleteAll();


    }

    protected void btnCercaEVENTI_Click(object sender, EventArgs e)
    {
        grdEventi.DataSourceID = SqlDataSource3.ID;
        grdEventi.DataBind();
    }

    protected void btnCancellaEVENTI_Click(object sender, EventArgs e)
    {
        EVENTI E = new EVENTI();
        E.EVENTI_DeleteAll();
    }
}