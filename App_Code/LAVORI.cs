using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class LAVORI
{ 
    
    public int chiave;
    public int chiaveCOMMESSA;
    public int chiaveDIPENDENTE;
    public DateTime DATAORA; //verificare la conversione altrimenti passare a string
    public int ORE;
    public string DESCRIZIONE;
    public float PERNOTTAMENTO;
    public float PASTO;
    public int KM;
    public float PEDAGGI;
    public float MEZZI;
    public float SPESEEXTRA;
    public string DESCRIZIONESPESEEXTRA;
    public int ACCETTAZIONESPESE;

    public void LAVORI_Insert()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spLAVORI_Insert";
        D.cmd.Parameters.AddWithValue("@chiaveCOMMESSA", chiaveCOMMESSA);
        D.cmd.Parameters.AddWithValue("@chiaveDIPENDENTE", chiaveDIPENDENTE);
        D.cmd.Parameters.AddWithValue("@DATAORA", DATAORA);
        D.cmd.Parameters.AddWithValue("@ORE", ORE);
        D.cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);
        D.cmd.Parameters.AddWithValue("@PERNOTTAMENTO", PERNOTTAMENTO);
        D.cmd.Parameters.AddWithValue("@PASTO", PASTO);
        D.cmd.Parameters.AddWithValue("@KM", KM);
        D.cmd.Parameters.AddWithValue("@PEDAGGI", PEDAGGI);
        D.cmd.Parameters.AddWithValue("@MEZZI", MEZZI);
        D.cmd.Parameters.AddWithValue("@SPESEEXTRA", SPESEEXTRA);
        D.cmd.Parameters.AddWithValue("@DESCRIZIONESPESEEXTRA", DESCRIZIONESPESEEXTRA);
        D.cmd.Parameters.AddWithValue("@ACCETTAZIONESPESE", ACCETTAZIONESPESE);
        D.EseguiSPNonRead();
    }

    public void LAVORI_Update()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spLAVORI_Update";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        D.cmd.Parameters.AddWithValue("@chiaveCOMMESSA", chiaveCOMMESSA);
        D.cmd.Parameters.AddWithValue("@chiaveDIPENDENTE", chiaveDIPENDENTE);
        D.cmd.Parameters.AddWithValue("@DATAORA", DATAORA);
        D.cmd.Parameters.AddWithValue("@ORE", ORE);
        D.cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);
        D.cmd.Parameters.AddWithValue("@PERNOTTAMENTO", PERNOTTAMENTO);
        D.cmd.Parameters.AddWithValue("@PASTO", PASTO);
        D.cmd.Parameters.AddWithValue("@KM", KM);
        D.cmd.Parameters.AddWithValue("@PEDAGGI", PEDAGGI);
        D.cmd.Parameters.AddWithValue("@MEZZI", MEZZI);
        D.cmd.Parameters.AddWithValue("@SPESEEXTRA", SPESEEXTRA);
        D.cmd.Parameters.AddWithValue("@DESCRIZIONESPESEEXTRA", DESCRIZIONESPESEEXTRA);
        D.cmd.Parameters.AddWithValue("@ACCETTAZIONESPESE", ACCETTAZIONESPESE);
        D.EseguiSPNonRead();
    }

    public DataTable LAVORI_SelectByKey()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spLAVORI_SelectByKey";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable LAVORI_SelectAll()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spLAVORI_SelectAll";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable LAVORI_SelectByDipendenti_DDL()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spLAVORI_SelectByDipendenti_DDL";
        D.cmd.Parameters.AddWithValue("@chiaveDIPENDENTE", chiaveDIPENDENTE);
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable LAVORI_SelectByAccettazioneSpese()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spLAVORI_SelectByAccettazioneSpese";
        D.cmd.Parameters.AddWithValue("@ACCETTAZIONESPESE", ACCETTAZIONESPESE);
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable LAVORI_SelectByCommessa()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spLAVORI_SelectByCommessa";
        D.cmd.Parameters.AddWithValue("@chiaveCOMMESSA", chiaveCOMMESSA);
        DT = D.EseguiSPRead();
        return DT;
    }
    public void LAVORI_Accetta()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spLAVORI_Accetta";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        D.EseguiSPNonRead();
    }
}