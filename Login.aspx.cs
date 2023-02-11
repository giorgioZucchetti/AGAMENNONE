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
        //controlli formali
        if (txtEMAIL.Text.Trim() == "" || txtPWD.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Inserisci tutti i dati!');", true);
            return;
        }

        //istanzio la classe dipendenti
        DIPENDENTI D = new DIPENDENTI();
        DataTable DT = new DataTable();
        D.EMAIL = txtEMAIL.Text.Trim();
        D.PWD = CRIPTOPWD.Crypta(txtPWD.Text.Trim());
        DT = D.spDIPENDENTI_Login();
        
        //controllo se utente esiste
        if (DT.Rows.Count == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Utente o password errati!');", true);
            //registrazione del login fallito nel log accessi
            ACCESSI A = new ACCESSI();
            DateTime DataOra = DateTime.Now;
            string evento = "Login utente fallito";
            int chiaveDipendente = 1; //quì ci va il parametro preso dalla textbox
            A.CHIAVEDIPENDENTE = chiaveDipendente;
            A.DATAORA = DataOra;
            A.EVENTO = evento;
            A.ACCESSI_Insert();
            return;
        }

        //controllo se utente abilitato
        if (Convert.ToBoolean(DT.Rows[0]["ABILITATO"]) == false)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Non sei abilitato');", true);
            //registrazione del login fallito nel log accessi
            ACCESSI A = new ACCESSI();
            DateTime DataOra = DateTime.Now;
            string evento = "Login utente non abilitato fallito";
            int chiaveDipendente = 1; //quì ci va il parametro preso dalla textbox
            A.CHIAVEDIPENDENTE = chiaveDipendente;
            A.DATAORA = DataOra;
            A.EVENTO = evento;
            A.ACCESSI_Insert();
            return;
        }

        //controllo se utente è al primo accesso
        if (Convert.ToBoolean(DT.Rows[0]["PRIMOACCESSO"]) == true)
        {
            Response.Redirect("/CambioPassword/CambioPassword.aspx");
        }

        //registrazione del login approvato nei log accessi
        ACCESSI A1 = new ACCESSI();
        DateTime DataOra1 = DateTime.Now;
        string evento1 = "Login utente";
        int chiaveDipendente1 = 1; //quì ci va il parametro preso dalla textbox
        A1.CHIAVEDIPENDENTE = chiaveDipendente1;
        A1.DATAORA = DataOra1;
        A1.EVENTO = evento1;
        A1.ACCESSI_Insert();
        
        //memorizzo il tipo di utente e la mail nella session per utilizzarla in altre pagine
        string ruolo = DT.Rows[0]["RUOLO"].ToString();
        string email = DT.Rows[0]["EMAIL"].ToString();
        Session["ruolo"] = ruolo;
        Session["email"] = email;
        Response.Redirect("Default.aspx");
    }

}

        
