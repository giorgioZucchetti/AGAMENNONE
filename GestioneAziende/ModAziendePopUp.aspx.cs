using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gestione_Aziende_modAziendePopUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack) 
        {
            //mancano i controlli formali
            string chiave = Session["chiave"].ToString();

            //istanzio la classe
            AZIENDE A = new AZIENDE();

            //salvo i parametri
            DataTable DT = new DataTable();
            A.chiave = int.Parse(chiave);
            DT = A.AZIENDE_SelectByKey();
            txtRAGIONESOCIALE.Text = DT.Rows[0]["RAGIONESOCIALE"].ToString();
            txtINDIRIZZO.Text = DT.Rows[0]["INDIRIZZO"].ToString();
            txtCITTA.Text = DT.Rows[0]["CITTA"].ToString();
            txtCAP.Text = DT.Rows[0]["CAP"].ToString();
            txtPROVINCIA.Text = DT.Rows[0]["PROVINCIA"].ToString();
            txtEMAIL.Text = DT.Rows[0]["EMAIL"].ToString();
            txtTELEFONO.Text = DT.Rows[0]["TELEFONO"].ToString();
            txtCODICEFISCALE.Text = DT.Rows[0]["CODICEFISCALE"].ToString();
            txtPIVA.Text = DT.Rows[0]["PIVA"].ToString();
            txtPEC.Text = DT.Rows[0]["PEC"].ToString();
            txtCFE.Text = DT.Rows[0]["CFE"].ToString();
            txtTITOLARE.Text = DT.Rows[0]["TITOLARE"].ToString();
            txtEMAILTITOLARE.Text = DT.Rows[0]["EMAILTITOLARE"].ToString();
            txtTELTITOLARE.Text = DT.Rows[0]["TELTITOLARE"].ToString();
        }
    }



    protected void btnModifica_Click(object sender, EventArgs e)
    {
        string chiave = Session["chiave"].ToString();
        AZIENDE A = new AZIENDE();
        A.chiave = int.Parse(chiave);
        A.RAGIONESOCIALE = txtRAGIONESOCIALE.Text.Trim();
        A.INDIRIZZO = txtINDIRIZZO.Text.Trim();
        A.CITTA = txtCITTA.Text.Trim();
        A.CAP = txtCAP.Text.Trim();
        A.PROVINCIA = txtPROVINCIA.Text.Trim();
        A.EMAIL = txtEMAIL.Text.Trim(); 
        A.TELEFONO = txtTELEFONO.Text.Trim();
        A.CODICEFISCALE= txtCODICEFISCALE.Text.Trim();
        A.PIVA = txtPIVA.Text.Trim();   
        A.PEC = txtPEC.Text.Trim();
        A.CFE = txtCFE.Text.Trim();
        A.TITOLARE = txtTITOLARE.Text.Trim();
        A.EMAILTITOLARE = txtEMAILTITOLARE.Text.Trim(); 
        A.TELTITOLARE = txtTELTITOLARE.Text.Trim();
        A.AZIENDE_Update();
    }
}