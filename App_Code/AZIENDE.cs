using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

/// <summary>
/// Questa classe si occupa dell'inserimento e della modifica dei dati delle aziende 
/// </summary>
public class AZIENDE
{
    //membri della classe
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
         
    //Costruttore della classe
    public AZIENDE()
    {
        
    }

    //metodi della classe
    /// <summary>
    /// Questo metodo inserisce i dati delle aziende nel database
    /// </summary>
    public void AZIENDE_Insert() 
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spAZIENDE_Insert";
        D.cmd.Parameters.AddWithValue("RAGIONESOCIALE", RAGIONESOCIALE);
        D.cmd.Parameters.AddWithValue("INDIRIZZO", INDIRIZZO);
        D.cmd.Parameters.AddWithValue("CITTA", CITTA);
        D.cmd.Parameters.AddWithValue("CAP", CAP);
        D.cmd.Parameters.AddWithValue("PROVINCIA", PROVINCIA);
        D.cmd.Parameters.AddWithValue("EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("TELEFONO", TELEFONO);
        D.cmd.Parameters.AddWithValue("CODICEFISCALE", CODICEFISCALE);
        D.cmd.Parameters.AddWithValue("PIVA", PIVA);
        D.cmd.Parameters.AddWithValue("PEC", PEC);
        D.cmd.Parameters.AddWithValue("CFE", CFE);
        D.cmd.Parameters.AddWithValue("TITOLARE", TITOLARE);
        D.cmd.Parameters.AddWithValue("EMAILTITOLARE", EMAILTITOLARE);
        D.cmd.Parameters.AddWithValue("TELTITOLARE", TELTITOLARE);
        D.EseguiSPNonRead();
    }
    /// <summary>
    /// Questo metodo seleziona tutte le colonne della tabella aziende
    /// </summary>
    /// <returns>Questo metodo ritorna una datatable con tutti i dati di aziende</returns>
    public DataTable AZIENDE_SelectAll()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.cmd.CommandText = "spAZIENDE_SelectAll";
        DT = D.EseguiSPRead();
        return DT;
    }
    /// <summary>
    /// Questo metodo seleziona alcuni dati delle aziende per mostrarli in una ddl
    /// </summary>
    /// <returns>Questo metodo ritorna una datatable con i dati di aziende</returns>
    public DataTable AZIENDE_SelectAll_DDL()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.cmd.CommandText = "spAZIENDE_SelectAll_DDL";
        DT = D.EseguiSPRead();
        return DT;
    }
    /// <summary>
    /// Questo metodo seleziona tutti i dati delle aziende, relativi ad una selezione di chiave primaria
    /// </summary>
    /// <returns>Questo metodo ritorna una datatable con i dati di aziende</returns>
    public DataTable AZIENDE_SelectByKey() 
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.cmd.CommandText = "spAZIENDE_SelectByKey";
        D.cmd.Parameters.AddWithValue("chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }
    /// <summary>
    /// Questo metodo aggiorna tutti i dati delle aziende, relativi ad una chiave primaria
    /// </summary>
    public void AZIENDE_Update()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spAZIENDE_Update";
        D.cmd.Parameters.AddWithValue("chiave", chiave);
        D.cmd.Parameters.AddWithValue("RAGIONESOCIALE", RAGIONESOCIALE);
        D.cmd.Parameters.AddWithValue("INDIRIZZO", INDIRIZZO);
        D.cmd.Parameters.AddWithValue("CITTA", CITTA);
        D.cmd.Parameters.AddWithValue("CAP", CAP);
        D.cmd.Parameters.AddWithValue("PROVINCIA", PROVINCIA);
        D.cmd.Parameters.AddWithValue("EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("TELEFONO", TELEFONO);
        D.cmd.Parameters.AddWithValue("CODICEFISCALE", CODICEFISCALE);
        D.cmd.Parameters.AddWithValue("PIVA", PIVA);
        D.cmd.Parameters.AddWithValue("PEC", PEC);
        D.cmd.Parameters.AddWithValue("CFE", CFE);
        D.cmd.Parameters.AddWithValue("TITOLARE", TITOLARE);
        D.cmd.Parameters.AddWithValue("EMAILTITOLARE", EMAILTITOLARE);
        D.cmd.Parameters.AddWithValue("TELTITOLARE", TELTITOLARE);
        D.EseguiSPNonRead();
    }
}