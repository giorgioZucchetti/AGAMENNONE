using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;


public class ACCESSI
{
    public int CHIAVEDIPENDENTE;
    public DateTime DATAORA;
    public string EVENTO;
    public DateTime DATAINIZIO;
    public DateTime DATAFINE;

    public void ACCESSI_Insert()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spACCESSI_Insert";
        D.cmd.Parameters.AddWithValue("@CHIAVEDIPENDENTE", CHIAVEDIPENDENTE);
        D.cmd.Parameters.AddWithValue("@DATAORA", DATAORA);
        D.cmd.Parameters.AddWithValue("@EVENTO", EVENTO);
        D.EseguiSPNonRead();

    }

    public DataTable ACCESSI_SelectAll()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.cmd.CommandText = "spACCESSI_SelectAll";
        DT = D.EseguiSPRead();
        return DT;

    }
        
    public void ACCESSI_DeleteAll()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spACCESSI_DeleteAll";
        D.EseguiSPNonRead();
        

    }

    public DataTable ACCESSI_SelectDate_Interval()
    {
      
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spACCESSI_SelectDate_Interval";
        DataTable DT = new DataTable();
        DT = D.EseguiSPRead();
        return DT;

    }
}