using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtEMAIL.Text.Trim() == "" || txtPWD.Text.Trim() == "") 
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Inserisci tutti i dati!');", true);
            return;
        }

        DIPENDENTI D = new DIPENDENTI();
        DataTable DT = new DataTable(); 
        D.EMAIL = txtEMAIL.Text;
        D.PWD = txtPWD.Text;
        DT = D.spDIPENDENTI_Login();
        
        if(DT.Rows.Count == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Utente o password errati!');", true);
            return;
        }

        //memorizzo il tipo di utente nella session
        string ruolo = DT.Rows[0]["RUOLO"].ToString();
        Session["ruolo"] = ruolo;

        Response.Redirect("Default.aspx");
    }
}