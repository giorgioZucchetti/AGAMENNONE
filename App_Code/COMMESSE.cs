using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class COMMESSE
{
    public int chiave;
    public int chiaveCLIENTE;
    public int chiaveRESPONSABILE;
    public string CORPOORA;
    public DateTime DATAAPERTURA;
    public DateTime DATACHIUSURA;
    public DateTime STARTDATE;
    public DateTime ENDDATE;
    public DateTime DATACONSEGNA;
    public string DESCRIZIONE;
    public float IMPORTOCORPO;
    public float IMPORTOORARIO;
    public int ANTICIPO;
    public float PERNOTTAMENTO;
    public float PASTO;
    public float KM;
    public float PEDAGGI;
    public float MEZZI;

    public COMMESSE()
    {

    }

    public void COMMESSE_Insert()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spCOMMESSE_Insert";
        D.cmd.Parameters.AddWithValue("@chiaveCLIENTE", chiaveCLIENTE);
        D.cmd.Parameters.AddWithValue("@chiaveRESPONSABILE", chiaveRESPONSABILE);
        D.cmd.Parameters.AddWithValue("@CORPOORA", CORPOORA);
        D.cmd.Parameters.AddWithValue("@DATAAPERTURA", DATAAPERTURA);
        D.cmd.Parameters.AddWithValue("@DATACHIUSURA", DATACHIUSURA);
        D.cmd.Parameters.AddWithValue("@DATACONSEGNA", DATACONSEGNA);
        D.cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);
        D.cmd.Parameters.AddWithValue("@IMPORTOCORPO", IMPORTOCORPO);
        D.cmd.Parameters.AddWithValue("@IMPORTOORARIO", IMPORTOORARIO);
        D.cmd.Parameters.AddWithValue("@ANTICIPO", ANTICIPO);
        D.cmd.Parameters.AddWithValue("@PERNOTTAMENTO", PERNOTTAMENTO);
        D.cmd.Parameters.AddWithValue("@PASTO", PASTO);
        D.cmd.Parameters.AddWithValue("@KM", KM);
        D.cmd.Parameters.AddWithValue("@PEDAGGI", PEDAGGI);
        D.cmd.Parameters.AddWithValue("@MEZZI", MEZZI);
        D.EseguiSPNonRead();
    }

    public void COMMESSE_Update()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spCOMMESSE_Update";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        D.cmd.Parameters.AddWithValue("@chiaveCLIENTE", chiaveCLIENTE);
        D.cmd.Parameters.AddWithValue("@chiaveRESPONSABILE", chiaveRESPONSABILE);
        D.cmd.Parameters.AddWithValue("@CORPOORA", CORPOORA);
        D.cmd.Parameters.AddWithValue("@DATAAPERTURA", DATAAPERTURA);
        D.cmd.Parameters.AddWithValue("@DATACHIUSURA", DATACHIUSURA);
        D.cmd.Parameters.AddWithValue("@DATACONSEGNA", DATACONSEGNA);
        D.cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);
        D.cmd.Parameters.AddWithValue("@IMPORTOCORPO", IMPORTOCORPO);
        D.cmd.Parameters.AddWithValue("@IMPORTOORARIO", IMPORTOORARIO);
        D.cmd.Parameters.AddWithValue("@ANTICIPO", ANTICIPO);
        D.cmd.Parameters.AddWithValue("@PERNOTTAMENTO", PERNOTTAMENTO);
        D.cmd.Parameters.AddWithValue("@PASTO", PASTO);
        D.cmd.Parameters.AddWithValue("@KM", KM);
        D.cmd.Parameters.AddWithValue("@PEDAGGI", PEDAGGI);
        D.cmd.Parameters.AddWithValue("@MEZZI", MEZZI);
        D.EseguiSPNonRead();
    }
    public DataTable COMMESSE_SelectByKey()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spCOMMESSE_SelectByKey";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable COMMESSE_SelectAll()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spCOMMESSE_SelectAll";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable COMMESSE_SelectAll_DDL_Cliente()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spCOMMESSE_SelectAll_DDL_Cliente";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable COMMESSE_SelectAll_DDL_CorpoOra()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spCOMMESSE_SelectAll_DDL_CorpoOra";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable COMMESSE_SelectAll_DDL_Responsabile()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spCOMMESSE_SelectAll_DDL_Responsabile";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable COMMESSE_SelectDate_Interval()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spCOMMESSE_SelectDate_Interval";
        D.cmd.Parameters.AddWithValue("@STARTDATE", STARTDATE);
        D.cmd.Parameters.AddWithValue("@ENDDATE", ENDDATE);
        DT = D.EseguiSPRead();
        return DT;
    }
}