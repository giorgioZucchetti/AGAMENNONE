using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsFatturePopup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        if(txtNUMEROFATTURA.Text.Trim()=="" || txtDATAFATTURA.Text.Trim() == "" || txtIMPORTO.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('devi inserire i campi necessari');", true);
            return;
        }
        FATTURE F = new FATTURE();
        F.chiaveCOMMESSA = int.Parse(ddlChiaveCOMMESSA.SelectedValue);
        F.NUMEROFATTURA = txtNUMEROFATTURA.Text.Trim();
        F.DATAFATTURA = DateTime.Parse(txtDATAFATTURA.Text.Trim());
        F.DATASALDO = DateTime.Parse(txtDATASALDO.Text.Trim());
        F.IMPORTO = int.Parse(txtIMPORTO.Text.Trim());
        F.ALIQUOTA = int.Parse(txtALIQUOTA.Text.Trim());
        F.DESCRIZIONE = txtDESCRIZIONE.Text;
        F.FATTURE_insert();
        ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Inserimento effettuato');", true);

        txtNUMEROFATTURA.Text = "";
        txtNUMEROFATTURA.Text = "";
        txtDATAFATTURA.Text = "";
        txtDATASALDO.Text = "";
        txtIMPORTO.Text = "";
        txtALIQUOTA.Text = "";
        txtDESCRIZIONE.Text = "";
    }
}