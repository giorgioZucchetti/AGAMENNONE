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

    protected void btnCambioPWD_Click(object sender, EventArgs e)
    {
        if (txtPWD.Text.Trim() != txtPWDConfirm.Text.Trim())
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Conferma password sbagliata');", true);
            return;
        }

        if(txtEMAIL.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Inserisci email');", true);
            return;
        }

        //istanzio la classe dipendenti

        DIPENDENTI D = new DIPENDENTI();
        //salvo il parametro password criptandolo e memorizzandolo nel database
        D.PWD = CRIPTOPWD.Crypta(txtPWD.Text.Trim());
        D.EMAIL = txtEMAIL.Text.Trim();
        D.DIPENDENTI_CambioPassword();

        //registro l'evento di cambio password
        DateTime DataOra = DateTime.Now;
        string evento = "Cambio password";
        EVENTI E = new EVENTI();
        int chiaveDipendente = 1; //da modificare con parametro
        E.CHIAVEDIPENDENTE = chiaveDipendente;
        E.DATAORA = DataOra;
        E.EVENTO = evento;
        E.EVENTI_Insert();
        ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Hai cambiato la password');", true);
    }
}