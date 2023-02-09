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

    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        ////string chiave = Griglia.SelectedValue.ToString();


        //DataTable DT = new DataTable();
        ////creo connessione con classe MODELLI
        //CLIENTI C = new CLIENTI();
        //C.chiave = int.Parse(chiave);
        //DT = C.CLIENTI_SelectByKey();
        ////DT = DB.EseguiSPRead();

        //txtRagioneSociale.Text = DT.Rows[0]["RAGIONESOCIALE"].ToString();
        //txtIndirizzo.Text = DT.Rows[0]["INDIRIZZO"].ToString();
        //txtCitta.Text = DT.Rows[0]["CITTA"].ToString();
        //txtCap.Text = DT.Rows[0]["CAP"].ToString();
        //txtProvincia.Text = DT.Rows[0]["PROVINCIA"].ToString();
        //txtEmail.Text = DT.Rows[0]["EMAIL"].ToString();
        //txtTelefono.Text = DT.Rows[0]["TELEFONO"].ToString();
        //txtCodiceFiscale.Text = DT.Rows[0]["CODICEFISCALE"].ToString();
        //txtPIva.Text = DT.Rows[0]["PIVA"].ToString();
        //txtPec.Text = DT.Rows[0]["PEC"].ToString();
        //txtCfe.Text = DT.Rows[0]["CFE"].ToString();
        //txtTitolare.Text = DT.Rows[0]["TITOLARE"].ToString();
        //txtEmailTitolare.Text = DT.Rows[0]["EMAILTITOLARE"].ToString();
        //txtTelTitolare.Text = DT.Rows[0]["TELTITOLARE"].ToString();
    }
}