using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registrazione : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegistra_Click(object sender, EventArgs e)
    {
        //controlli formali

        if (txtCOGNOME.Text.Trim() == "" || txtNOME.Text.Trim() == "" || txtEMAIL.Text.Trim() == "") 
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Inserisci tutti i dati!');", true);
            return;
        }

        //istanzio la classe dipendenti

        DIPENDENTI D = new DIPENDENTI();
        DataTable DT = new DataTable();
        D.COGNOME = txtCOGNOME.Text.Trim();
        D.NOME = txtNOME.Text.Trim();   
        D.EMAIL = txtEMAIL.Text.Trim();
        DT = D.spDIPENDENTI_Registra();

        if (DT.Rows.Count == 0)
        {
            //controllo se l'utente ha già una mail aziendale
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Utente non presente!');", true);
            return;
        }

        //salvo la password temporanea nel database
        string tempPwd = (Membership.GeneratePassword(10, 1));
        D.PWD = CRIPTOPWD.Crypta(tempPwd);
        D.DIPENDENTI_InsertTempPwd();
        MAIL M = new MAIL();
        M.EMAIL = txtEMAIL.Text.Trim();
        //password temporanea da inviare all'utente
        M.PWD = tempPwd;
        //processo di invio mail
        M.Mail_Send_Admin();
        M.Mail_Send_Utente_Pwd();

        //registro l'evento della registrazione nel log eventi
        DateTime DataOra = DateTime.Now;
        string evento = "Registrazione nuovo utente";
        string chiaveDipendente = DT.Rows[0]["chiave"].ToString();
        EVENTI E = new EVENTI();
        E.CHIAVEDIPENDENTE = int.Parse(chiaveDipendente);
        E.DATAORA = DataOra;
        E.EVENTO = evento;
        E.EVENTI_Insert();

        //redirect alla pagina di login
        Response.Redirect("Login.aspx");
    }
}