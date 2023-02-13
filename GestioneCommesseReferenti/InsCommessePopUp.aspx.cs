using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsCommessePopUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        //controlli formali
        if (txtDESCRIZIONE.Text.Trim() == "")
        {
            return;
        }
        //connetto la classe CLIENTI
        COMMESSE C = new COMMESSE();

        C.chiaveCLIENTE = int.Parse(ddlCLIENTI.SelectedValue);
        C.chiaveRESPONSABILE = int.Parse(ddlDIPENDENTI.SelectedValue);
        C.CORPOORA = ddlCORPOORA.Value.ToString();
        C.DATAAPERTURA = DateTime.Parse(txtDATAAPERTURA.Text.Trim());
        C.DATACHIUSURA = DateTime.Parse(txtDATACHIUSURA.Text.Trim());
        C.DATACONSEGNA = DateTime.Parse(txtDATACONSEGNA.Text.Trim());
        C.DESCRIZIONE = txtDESCRIZIONE.Text.Trim();
        C.IMPORTOCORPO = float.Parse(txtIMPORTOCORPO.Text.Trim());
        C.IMPORTOORARIO = float.Parse(txtIMPORTOORARIO.Text.Trim());
        C.ANTICIPO = int.Parse(txtANTICIPO.Text.Trim());
        C.PERNOTTAMENTO = float.Parse(txtPERNOTTAMENTO.Text.Trim());
        C.PASTO = float.Parse(txtPASTO.Text.Trim());
        C.KM = float.Parse(txtKM.Text.Trim());
        C.PEDAGGI = float.Parse(txtPEDAGGI.Text.Trim());
        C.MEZZI = float.Parse(txtMEZZI.Text.Trim());

        //comando
        C.COMMESSE_Insert();
    }
}