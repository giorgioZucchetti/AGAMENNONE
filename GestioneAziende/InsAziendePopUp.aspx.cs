using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsAziendePopUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        if (txtRAGIONESOCIALE.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Azienda già presente!');", true);
            return;
        }
        //istanzio la classe
        AZIENDE A = new AZIENDE();

        //salvo i parametri
        A.RAGIONESOCIALE = txtRAGIONESOCIALE.Text.Trim();
        A.INDIRIZZO = txtINDIRIZZO.Text.Trim();
        A.CITTA = txtCITTA.Text.Trim();
        A.CAP = txtCAP.Text.Trim();
        A.PROVINCIA = txtPROVINCIA.Text.Trim();
        A.EMAIL = txtEMAIL.Text.Trim();
        A.TELEFONO = txtTELEFONO.Text.Trim();
        A.CODICEFISCALE = txtCODICEFISCALE.Text.Trim();
        A.PIVA = txtPIVA.Text.Trim();
        A.PEC = txtPEC.Text.Trim();
        A.CFE = txtCFE.Text.Trim();
        A.TITOLARE = txtTITOLARE.Text.Trim();
        A.EMAILTITOLARE = txtEMAILTITOLARE.Text.Trim();
        A.TELTITOLARE = txtTELTITOLARE.Text.Trim();

        //comando
        A.AZIENDE_Insert();
    }
}