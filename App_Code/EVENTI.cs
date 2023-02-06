using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;


public class EVENTI
{
    public int CHIAVEDIPENDENTE;
    public DateTime DATAORA;
    public string EVENTO;
    public DateTime DATAINIZIO;
    public DateTime DATAFINE;

    public void EVENTI_Insert()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spEVENTI_Insert";
        D.cmd.Parameters.AddWithValue("@CHIAVEDIPENDENTE", CHIAVEDIPENDENTE);
        D.cmd.Parameters.AddWithValue("@DATAORA", DATAORA);
        D.cmd.Parameters.AddWithValue("@EVENTO", EVENTO);
        D.EseguiSPNonRead();

    }

    public DataTable EVENTI_SelectAll()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.cmd.CommandText = "spEVENTI_SelectAll";
        DT = D.EseguiSPRead();
        return DT;

    }

    public void EVENTI_DeleteAll()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spEVENTI_DeleteAll";
        D.EseguiSPNonRead();


    }

    public DataTable EVENTI_SelectDate_Interval()
    {

        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spEVENTI_SelectDate_Interval";
        DataTable DT = new DataTable();
        DT = D.EseguiSPRead();
        return DT;

    }
}