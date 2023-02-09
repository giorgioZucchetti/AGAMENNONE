using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class POPUP_CLIENTI_Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        //controlli formali
        if (txtRagioneSociale.Text.Trim() == "")
        {
            return;
        }
        //connetto la classe CLIENTI
        CLIENTI C = new CLIENTI();

        C.RAGIONESOCIALE = txtRagioneSociale.Text.Trim();
        C.INDIRIZZO = txtIndirizzo.Text.Trim();
        C.CITTA = txtCitta.Text.Trim();
        C.CAP = txtCap.Text.Trim();
        C.PROVINCIA = txtProvincia.Text.Trim();
        C.EMAIL = txtEmail.Text.Trim();
        C.TELEFONO = txtTelefono.Text.Trim();
        C.CODICEFISCALE = txtCodiceFiscale.Text.Trim();
        C.PIVA = txtPIva.Text.Trim();
        C.PEC = txtPec.Text.Trim();
        C.CFE = txtCfe.Text.Trim();
        C.TITOLARE = txtTitolare.Text.Trim();
        C.EMAILTITOLARE = txtEmailTitolare.Text.Trim();
        C.TELTITOLARE = txtTelTitolare.Text.Trim();

        //comando
        C.CLIENTI_Insert();


    }
}