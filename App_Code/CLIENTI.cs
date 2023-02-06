using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.InteropServices.WindowsRuntime;
using System.ServiceModel.Dispatcher;

/// <summary>
/// Descrizione di riepilogo per CLIENTI
/// </summary>
public class CLIENTI
{

    public int chiave;
    public string RAGIONESOCIALE;
    public string INDIRIZZO;
    public string CITTA;
    public string CAP;
    public string PROVINCIA;
    public string EMAIL;
    public string TELEFONO;
    public string CODICEFISCALE;
    public string PIVA;
    public string PEC;
    public string CFE;
    public string TITOLARE;
    public string EMAILTITOLARE;
    public string TELTITOLARE;




    DATABASE D = new DATABASE();
    DataTable DT = new DataTable();



    public CLIENTI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    public DataTable CLIENTI_SelectAll()
    {
        D.cmd.CommandText = "spCLIENTI_SelectAll";
        DT = D.EseguiSPRead();
        return DT;

    }

    public void CLIENTI_Insert()
    {
        D.cmd.CommandText = "spCLIENTI_Insert";
        D.cmd.Parameters.AddWithValue("@RAGIONESOCIALE", RAGIONESOCIALE);
        D.cmd.Parameters.AddWithValue("@INDIRIZZO", INDIRIZZO);
        D.cmd.Parameters.AddWithValue("@CITTA", CITTA);
        D.cmd.Parameters.AddWithValue("@CAP", CAP);
        D.cmd.Parameters.AddWithValue("@PROVINCIA", PROVINCIA);
        D.cmd.Parameters.AddWithValue("@EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("@@TELEFONO", @TELEFONO);
        D.cmd.Parameters.AddWithValue("@@CODICEFISCALE", @CODICEFISCALE);
        D.cmd.Parameters.AddWithValue("@PIVA", PIVA);
        D.cmd.Parameters.AddWithValue("@PEC", PEC);
        D.cmd.Parameters.AddWithValue("@TITOLARE", TITOLARE);
        D.cmd.Parameters.AddWithValue("@EMAILTITOLARE", EMAILTITOLARE);
        D.cmd.Parameters.AddWithValue("@TELTITOLARE", TELTITOLARE);
        D.EseguiSPNonRead();
    }

    public DataTable CLIENTI_SelectByKey()
    {
        D.query = "spCLIENTI_SelectByKey";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }



    public void CLIENTI_Update()
    {
        D.cmd.CommandText = "spCLIENTI_Update";
        D.cmd.Parameters.AddWithValue("@RAGIONESOCIALE", RAGIONESOCIALE);
        D.cmd.Parameters.AddWithValue("@INDIRIZZO", INDIRIZZO);
        D.cmd.Parameters.AddWithValue("@CITTA", CITTA);
        D.cmd.Parameters.AddWithValue("@CAP", CAP);
        D.cmd.Parameters.AddWithValue("@PROVINCIA", PROVINCIA);
        D.cmd.Parameters.AddWithValue("@EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("@@TELEFONO", @TELEFONO);
        D.cmd.Parameters.AddWithValue("@@CODICEFISCALE", @CODICEFISCALE);
        D.cmd.Parameters.AddWithValue("@PIVA", PIVA);
        D.cmd.Parameters.AddWithValue("@PEC", PEC);
        D.cmd.Parameters.AddWithValue("@TITOLARE", TITOLARE);
        D.cmd.Parameters.AddWithValue("@EMAILTITOLARE", EMAILTITOLARE);
        D.cmd.Parameters.AddWithValue("@TELTITOLARE", TELTITOLARE);
        D.EseguiSPNonRead();
    }
}