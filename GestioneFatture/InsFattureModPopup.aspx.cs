using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsFattureModPopup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {

        if (!IsPostBack)
        {
            if (Session["chiave"] == null)
            {
                return;
            }

            string chiave = Session["chiave"].ToString();

            //istanzio la classe
            FATTURE F = new FATTURE();

            //salvo i parametri
            DataTable DT = new DataTable();
            F.chiave = int.Parse(chiave);
            DT = F.FATTURE_SelectByKey();
            ddlChiaveCOMMESSA.SelectedValue = DT.Rows[0]["chiaveCOMMESSA"].ToString();
            txtNUMEROFATTURA.Text = DT.Rows[0]["NUMERO FATTURA"].ToString();
            txtIMPORTO.Text = DT.Rows[0]["IMPORTO"].ToString();
            txtDESCRIZIONE.Text = DT.Rows[0]["DESCRIZIONE"].ToString();
            txtDATAFATTURA.Text = Convert.ToDateTime(DT.Rows[0]["DATA FATTURA"]).ToString("yyyy-MM-dd");
            txtDATASALDO.Text = Convert.ToDateTime(DT.Rows[0]["DATASALDO"]).ToString("yyyy-MM-dd");
        }
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (txtNUMEROFATTURA.Text.Trim() == "" || txtIMPORTO.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('devi inserire i campi necessari');", true);
            return;
        }
        FATTURE F = new FATTURE();
        string chiave = Session["chiave"].ToString();
        F.chiave = int.Parse(chiave);
        F.chiaveCOMMESSA = int.Parse(ddlChiaveCOMMESSA.SelectedValue);
        F.NUMEROFATTURA = txtNUMEROFATTURA.Text.Trim();
        F.DATAFATTURA = DateTime.Parse(txtDATAFATTURA.Text.Trim());
        F.DATASALDO = DateTime.Parse(txtDATASALDO.Text.Trim());
        F.IMPORTO = float.Parse(txtIMPORTO.Text.Trim());
        F.ALIQUOTA = int.Parse(txtALIQUOTA.Text.Trim());
        F.DESCRIZIONE = txtDESCRIZIONE.Text;
        F.FATTURE_Update();
        ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Modifica effettuata');", true);

        txtNUMEROFATTURA.Text = "";
        txtNUMEROFATTURA.Text = "";
        txtDATAFATTURA.Text = "";
        txtDATASALDO.Text = "";
        txtIMPORTO.Text = "";
        txtALIQUOTA.Text = "";
        txtDESCRIZIONE.Text = "";
    }
}