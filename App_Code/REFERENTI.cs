using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class REFERENTI
{
    public int chiave;
    public int chiaveCLIENTE;
    public string COGNOME;
    public string NOME;
    public string EMAIL;
    public string TELEFONO;

    public void REFERENTI_Insert()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spREFERENTI_Insert";
        D.cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        D.cmd.Parameters.AddWithValue("@NOME", NOME);
        D.cmd.Parameters.AddWithValue("@EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("@TELEFONO", TELEFONO);
        D.EseguiSPNonRead();
    }

    public void REFERENTI_Update()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spREFERENTI_Update";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        D.cmd.Parameters.AddWithValue("@chiaveCLIENTE", chiaveCLIENTE);
        D.cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        D.cmd.Parameters.AddWithValue("@NOME", NOME);
        D.cmd.Parameters.AddWithValue("@EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("@TELEFONO", TELEFONO);
        D.EseguiSPNonRead();
    }

    public DataTable REFERENTI_SelectByKey()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spREFERENTI_SelectByKey";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable REFERENTI_SelectAll()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spREFERENTI_SelectAll";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable REFERENTI_SelectAll_DDL()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spREFERENTI_SelectAll_DDL";
        DT = D.EseguiSPRead();
        return DT;
    }
}