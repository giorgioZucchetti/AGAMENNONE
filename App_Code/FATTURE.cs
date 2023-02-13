using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.InteropServices.WindowsRuntime;
using System.ServiceModel.Dispatcher;

/// <summary>
/// Descrizione di riepilogo per FATTURE
/// </summary>
public class FATTURE
{
    public int chiave;
    public int chiaveCOMMESSA;
    public string NUMEROFATTURA;
    public DateTime DATAFATTURA;
    public float IMPORTO;
    public int ALIQUOTA;
    public string DESCRIZIONE;
    public DateTime DATASALDO;
    public int MESE;
    public DateTime STARTDATE;
    public DateTime ENDDATE;


    DATABASE D = new DATABASE();
    DataTable DT = new DataTable();


    public FATTURE()
    {

    }

    public DataTable FATTURE_SelectAll()
    {
        D.cmd.CommandText = "spFATTURE_SelectAll";
        DT = D.EseguiSPRead();
        return DT;

    }

    public DataTable FATTURE_SelectByDataSaldo()
    {
        D.cmd.Parameters.AddWithValue("@DATASALDO", DATASALDO);
        D.cmd.CommandText = "spFATTURE_SelectAll";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable FATTURE_SelectByMonth()
    {
        D.cmd.Parameters.AddWithValue("@MONTH", MESE);
        D.cmd.CommandText = "spFATTURE_SelectByMonth";
        DT = D.EseguiSPRead();
        return DT;
    }


    public DataTable FATTURE_SelectByYear()
    {
        D.cmd.Parameters.AddWithValue("@MONTH", MESE);
        D.cmd.CommandText = "spFATTURE_SelectByYear";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable FATTURE_SelectDate_Interval()
    {
        D.cmd.Parameters.AddWithValue("@STARTDATE", STARTDATE);
        D.cmd.Parameters.AddWithValue("@ENDDATE", ENDDATE);
        D.cmd.CommandText = "spFATTURE_SelectDate_Interval";
        DT = D.EseguiSPRead();
        return DT;
    }

    public void FATTURE_insert()
    {
        D.cmd.CommandText = "spFATTURE_Insert";
        D.cmd.Parameters.AddWithValue("@chiaveCOMMESSA", chiaveCOMMESSA);
        D.cmd.Parameters.AddWithValue("@NUMEROFATTURA", NUMEROFATTURA);
        D.cmd.Parameters.AddWithValue("@DATAFATTURA", DATAFATTURA);
        D.cmd.Parameters.AddWithValue("@IMPORTO", IMPORTO);
        D.cmd.Parameters.AddWithValue("@ALIQUOTA", ALIQUOTA);
        D.cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);
        D.cmd.Parameters.AddWithValue("@DATASALDO", DATASALDO);
        D.EseguiSPNonRead();

    }
    public DataTable FATTURE_SelectByKey()
    {
        D.cmd.CommandText = "spFATTURE_SelectByKey";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }
    public void FATTURE_Update()
    {
        D.cmd.CommandText = "spFATTURE_Update";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        D.cmd.Parameters.AddWithValue("@chiaveCOMMESSA", chiaveCOMMESSA);
        D.cmd.Parameters.AddWithValue("@NUMEROFATTURA", NUMEROFATTURA);
        D.cmd.Parameters.AddWithValue("@DATAFATTURA", DATAFATTURA);
        D.cmd.Parameters.AddWithValue("@IMPORTO", IMPORTO);
        D.cmd.Parameters.AddWithValue("@ALIQUOTA", ALIQUOTA);
        D.cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);
        D.cmd.Parameters.AddWithValue("@DATASALDO", DATASALDO);
        D.EseguiSPNonRead();
    }

    public void FATTURE_NullDataFatt()
    {
        D.cmd.CommandText = "sp_FATTUREDataFattureInsertNull";
        D.cmd.Parameters.AddWithValue("DATAFATTURA", DATAFATTURA);
        D.EseguiSPNonRead();
    }
}



