using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsDipendentiPopup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        //istanzio la classe
        DIPENDENTI D = new DIPENDENTI();

        //salvo i parametri
        D.NOME = txtNOME.Text.Trim();
        D.COGNOME = txtCOGNOME.Text.Trim();
        D.chiaveAZIENDA = int.Parse(ddlRAGIONESOCIALE.SelectedValue);
        D.INDIRIZZO = txtINDIRIZZO.Text.Trim();
        D.CITTA = txtCITTA.Text.Trim();
        D.CAP = txtCAP.Text.Trim();
        D.PROVINCIA = txtPROVINCIA.Text.Trim();
        D.EMAIL = txtEMAIL.Text.Trim();
        D.TELEFONO = txtTELEFONO.Text.Trim();
        D.RUOLO = ddlRUOLO.SelectedValue.ToString();
        D.COSTOORARIO = float.Parse(txtCOSTOORARIO.Text.Trim());
        D.DATAINIZIORAPPORTO = DateTime.Parse(txtDATAINIZIORAPPORTO.Text.Trim());
        D.DATAFINERAPPORTO = DateTime.Parse(txtDATAFINERAPPORTO.Text.Trim());

        //comando
        D.DIPENDENTI_Insert();
    }
}