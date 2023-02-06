using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per CONTABILITA
/// </summary>
public class CONTABILITA
{
    public int anno;
    public int mese;
    public int chiaveDIPENDENTE;
    public int chiaveCOMMESSA;


    DATABASE D = new DATABASE();
    DataTable DT = new DataTable();

    public CONTABILITA()
    {
    }
    public DataTable PrevisioneFatture() {
        D.cmd.Parameters.AddWithValue("@anno", anno);
        D.cmd.Parameters.AddWithValue("@mese", mese);
        D.cmd.CommandText = "spPrevisioniFatture";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable FatturaNonEmessa()
    {

        D.cmd.CommandText = "spFatturaNonEmessa";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable RendimentoDipendentiPerCommesse()
    {
        D.cmd.Parameters.AddWithValue("@chiaveDIPENDENTE", chiaveDIPENDENTE);
        D.cmd.Parameters.AddWithValue("@chiaveCOMMESSA", chiaveCOMMESSA);
        D.cmd.CommandText = "spRendimentoDipendentiPerCommesse";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable RicavoCommesseCorpoByYear()
    {
        D.cmd.Parameters.AddWithValue("@anno", anno);
        D.cmd.CommandText = "spRicavoCommesseCorpoByYear";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable RicavoCommesseCorpoByYearMonth()
    {
        D.cmd.Parameters.AddWithValue("@anno", anno);
        D.cmd.Parameters.AddWithValue("@mese", anno);
        D.cmd.CommandText = "spRicavoCommesseCorpoByYearMonth";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable RicavoCommesseOreByYear()
    {
        D.cmd.Parameters.AddWithValue("@anno", anno);
        D.cmd.CommandText = "spRicavoCommesseOreByYear";
        DT = D.EseguiSPRead();
        return DT;
    }


    public DataTable RicavoCommesseOreByYearMonth()
    {
        D.cmd.Parameters.AddWithValue("@anno", anno);
        D.cmd.Parameters.AddWithValue("@mese", anno);
        D.cmd.CommandText = "spRicavoCommesseOreByYearMonth";
        DT = D.EseguiSPRead();
        return DT;
    }

}