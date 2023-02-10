using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsDipendentiModPopup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //mancano i controlli formali
            string chiave = Session["chiave"].ToString();

            //istanzio la classe
            DIPENDENTI D = new DIPENDENTI();

            //salvo i parametri
            DataTable DT = new DataTable();
            D.chiave = int.Parse(chiave);
            DT = D.DIPENDENTI_SelectByKey();
            txtNOME.Text = DT.Rows[0]["NOME"].ToString();
            txtCOGNOME.Text = DT.Rows[0]["COGNOME"].ToString();
            txtINDIRIZZO.Text = DT.Rows[0]["INDIRIZZO"].ToString();
            txtCITTA.Text = DT.Rows[0]["CITTA"].ToString();
            txtCAP.Text = DT.Rows[0]["CAP"].ToString();
            txtPROVINCIA.Text = DT.Rows[0]["PROVINCIA"].ToString();
            txtEMAIL.Text = DT.Rows[0]["EMAIL"].ToString();
            txtTELEFONO.Text = DT.Rows[0]["TELEFONO"].ToString();
            ddlRUOLO.SelectedValue = DT.Rows[0]["RUOLO"].ToString();
            txtCOSTOORARIO.Text = DT.Rows[0]["COSTOORARIO"].ToString();
            txtDATAINIZIORAPPORTO.Text = DT.Rows[0]["DATAINIZIORAPPORTO"].ToString();
            txtDATAFINERAPPORTO.Text = DT.Rows[0]["DATAFINERAPPORTO"].ToString();
            
        }
    }



    protected void btnModifica_Click(object sender, EventArgs e)
    {
        string chiave = Session["chiave"].ToString();
        DIPENDENTI D = new DIPENDENTI();
        DataTable DT = new DataTable();


        D.chiave = int.Parse(chiave);

        D.NOME = txtNOME.Text.Trim();
        D.COGNOME = txtCOGNOME.Text.Trim();
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


        D.DIPENDENTI_Update();


    }
}