using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModCommessePopUp : System.Web.UI.Page
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

            DataTable DT = new DataTable();
            //creo connessione con classe COMMESSE
            COMMESSE C = new COMMESSE();
            C.chiave = int.Parse(chiave);
            DT = C.COMMESSE_SelectByKey();

            ddlCLIENTI.SelectedValue = DT.Rows[0]["chiaveCLIENTE"].ToString();
            ddlDIPENDENTI.SelectedValue = DT.Rows[0]["chiaveRESPONSABILE"].ToString();
            ddlCORPOORA.Value = DT.Rows[0]["CORPOORA"].ToString();
            txtDATAAPERTURA.Text = Convert.ToDateTime(DT.Rows[0]["DATAAPERTURA"]).ToString("yyyy-MM-dd");
            txtDATACHIUSURA.Text = Convert.ToDateTime(DT.Rows[0]["DATACHIUSURA"]).ToString("yyyy-MM-dd");
            txtDATACONSEGNA.Text = Convert.ToDateTime(DT.Rows[0]["DATACONSEGNA"]).ToString("yyyy-MM-dd");
            txtDESCRIZIONE.Text = DT.Rows[0]["DESCRIZIONE"].ToString();
            txtIMPORTOCORPO.Text = DT.Rows[0]["IMPORTOCORPO"].ToString();
            txtIMPORTOORARIO.Text = DT.Rows[0]["IMPORTOORARIO"].ToString();
            txtANTICIPO.Text = DT.Rows[0]["ANTICIPO"].ToString();
            txtPERNOTTAMENTO.Text = DT.Rows[0]["PERNOTTAMENTO"].ToString();
            txtPASTO.Text = DT.Rows[0]["PASTO"].ToString();
            txtKM.Text = DT.Rows[0]["KM"].ToString();
            txtPEDAGGI.Text = DT.Rows[0]["PEDAGGI"].ToString();
            txtMEZZI.Text = DT.Rows[0]["MEZZI"].ToString();
        }
    }




    protected void btnModifica_Click(object sender, EventArgs e)
    {

        string chiave = Session["chiave"].ToString();

        //connetto la classe COMMESSE
        COMMESSE C = new COMMESSE();

        C.chiave = int.Parse(chiave);
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
        C.COMMESSE_Update();
        ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Modifica effettuata');", true);
    }
}