using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class POPUP_CLIENTI_Update : System.Web.UI.Page
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
            if (String.IsNullOrEmpty(chiave))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Nessun elemento selezionato');", true);
                return;
            }
            DataTable DT = new DataTable();
            //creo connessione con classe MODELLI
            CLIENTI C = new CLIENTI();
            C.chiave = Convert.ToInt32(chiave);
            DT = C.CLIENTI_SelectByKey();

            txtRagioneSociale.Text = DT.Rows[0]["RAGIONESOCIALE"].ToString();
            txtIndirizzo.Text = DT.Rows[0]["INDIRIZZO"].ToString();
            txtCitta.Text = DT.Rows[0]["CITTA"].ToString();
            txtCap.Text = DT.Rows[0]["CAP"].ToString();
            txtProvincia.Text = DT.Rows[0]["PROVINCIA"].ToString();
            txtEmail.Text = DT.Rows[0]["EMAIL"].ToString();
            txtTelefono.Text = DT.Rows[0]["TELEFONO"].ToString();
            txtCodiceFiscale.Text = DT.Rows[0]["CODICEFISCALE"].ToString();
            txtPIva.Text = DT.Rows[0]["PIVA"].ToString();
            txtPec.Text = DT.Rows[0]["PEC"].ToString();
            txtCfe.Text = DT.Rows[0]["CFE"].ToString();
            txtTitolare.Text = DT.Rows[0]["TITOLARE"].ToString();
            txtEmailTitolare.Text = DT.Rows[0]["EMAILTITOLARE"].ToString();
            txtTelTitolare.Text = DT.Rows[0]["TELTITOLARE"].ToString();

        }
    }



    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (txtRagioneSociale.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Errore');", true);
            return;
        }
        string chiave = Session["chiave"].ToString();

        CLIENTI C= new CLIENTI();

        C.chiave = Convert.ToInt32(chiave);
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

        C.CLIENTI_Update();
        DataBind();

    }
}