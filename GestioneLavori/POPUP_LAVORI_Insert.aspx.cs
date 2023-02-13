using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class POPUP_LAVORI_Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        //controlli formali
        if (txtDescrizione.Text.Trim() == "")
        {
            return;
        }
        //connetto la classe CLIENTI
        LAVORI LA = new LAVORI();

        LA.chiaveCOMMESSA = int.Parse(ddlCOMMESSA.SelectedValue);
        LA.chiaveDIPENDENTE = int.Parse(ddlDIPENDENTE.SelectedValue);
        LA.DATAORA = DateTime.Parse(txtData.Text.Trim());
        LA.ORE = int.Parse(txtOre.Text.Trim());
        LA.DESCRIZIONE = txtDescrizione.Text.Trim();
        LA.PERNOTTAMENTO = float.Parse(txtPernottamento.Text.Trim());
        LA.PASTO = float.Parse(txtPasto.Text.Trim());
        LA.KM = int.Parse(txtKm.Text.Trim());
        LA.PEDAGGI = float.Parse(txtPedaggi.Text.Trim());
        LA.MEZZI = float.Parse(txtMezzi.Text.Trim());
        LA.SPESEEXTRA = float.Parse(txtSpeseExtra.Text.Trim());
        LA.DESCRIZIONESPESEEXTRA = txtDescrizioneSpeseExtra.Text.Trim();


        //comando
        LA.LAVORI_Insert();
    }
}