using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

public class DIPENDENTI
{
    //membri della classe
    public int chiave;
    public int chiaveAZIENDA;
    public string EMAIL;
    public string PWD;
    public int ABILITATO;
    public int PRIMOACCESSO;
    public string RUOLO;
    public string COGNOME;
    public string NOME;
    public string INDIRIZZO;
    public string CITTA;
    public string CAP;
    public string PROVINCIA;
    public string TELEFONO;
    public float COSTOORARIO;
    public DateTime DATAINIZIORAPPORTO;
    public DateTime DATAFINERAPPORTO;
    public DIPENDENTI()
    {

    }

    public void DIPENDENTI_Abilita()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spDIPENDENTI_Abilita";
        D.cmd.Parameters.AddWithValue("EMAIL", EMAIL);
        D.EseguiSPNonRead();

    }

    public void DIPENDENTI_CambioPassword()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spDIPENDENTI_CambioPassword";
        D.cmd.Parameters.AddWithValue("EMAIL", EMAIL);
        D.EseguiSPNonRead();
    }

    public void DIPENDENTI_Disabilita()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spDIPENDENTI_Disabilita";
        D.cmd.Parameters.AddWithValue("EMAIL", EMAIL);
        D.EseguiSPNonRead();
    }

    public DataTable DIPENDENTI_Insert()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.cmd.CommandText = "spDIPENDENTI_Insert";
        D.cmd.Parameters.AddWithValue("chiaveAZIENDA", chiaveAZIENDA);
        D.cmd.Parameters.AddWithValue("EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("PWD", PWD);
        D.cmd.Parameters.AddWithValue("ABILITATO", ABILITATO);
        D.cmd.Parameters.AddWithValue("RUOLO", RUOLO);
        D.cmd.Parameters.AddWithValue("COGNOME", COGNOME);
        D.cmd.Parameters.AddWithValue("NOME", NOME);
        D.cmd.Parameters.AddWithValue("INDIRIZZO", INDIRIZZO);
        D.cmd.Parameters.AddWithValue("CITTA", CITTA);
        D.cmd.Parameters.AddWithValue("CAP", CAP);
        D.cmd.Parameters.AddWithValue("PROVINCIA", PROVINCIA);
        D.cmd.Parameters.AddWithValue("TELEFONO", TELEFONO);
        D.cmd.Parameters.AddWithValue("COSTOORARIO", COSTOORARIO);
        D.cmd.Parameters.AddWithValue("DATAINIZIORAPPORTO", DATAINIZIORAPPORTO);
        D.cmd.Parameters.AddWithValue("DATAFINERAPPORTO", DATAFINERAPPORTO);
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable spDIPENDENTI_Login()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.cmd.CommandText = "spDIPENDENTI_Login";
        D.cmd.Parameters.AddWithValue("EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("PWD", PWD);
        DT = D.EseguiSPRead();
        return DT;

    }

    public DataTable spDIPENDENTI_Registra()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.cmd.CommandText = "spDIPENDENTI_Registra";
        D.cmd.Parameters.AddWithValue("EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("PWD", PWD);
        D.cmd.Parameters.AddWithValue("NOME", NOME);
        D.cmd.Parameters.AddWithValue("COGNOME", COGNOME);
        DT = D.EseguiSPRead();
        return DT;
    }

    public void spDIPENDENTI_SelectAll()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spDIPENDENTI_Update";
        D.EseguiSPNonRead();
    }

    public DataTable DIPENDENTI_SelectAll_DDL()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spDIPENDENTI_SelectAll_DDL";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable DIPENDENTI_SelectByKey()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spDIPENDENTI_SelectByKey";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }


    public void DIPENDENTI_Update()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spDIPENDENTI_Update";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        D.cmd.Parameters.AddWithValue("@chiaveAZIENDA", chiaveAZIENDA);
        D.cmd.Parameters.AddWithValue("@EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("@PWD", PWD);
        D.cmd.Parameters.AddWithValue("@ABILITATO", ABILITATO);
        D.cmd.Parameters.AddWithValue("@PRIMOACCESSO", PRIMOACCESSO);
        D.cmd.Parameters.AddWithValue("@RUOLO", RUOLO);
        D.cmd.Parameters.AddWithValue("COGNOME", COGNOME);
        D.cmd.Parameters.AddWithValue("@NOME", NOME);
        D.cmd.Parameters.AddWithValue("@INDIRIZZO", INDIRIZZO);
        D.cmd.Parameters.AddWithValue("@CITTA", CITTA);
        D.cmd.Parameters.AddWithValue("@CAP", CAP);
        D.cmd.Parameters.AddWithValue("@PROVINCIA", PROVINCIA);
        D.cmd.Parameters.AddWithValue("@TELEFONO", TELEFONO);
        D.cmd.Parameters.AddWithValue("@COSTOORARIO", COSTOORARIO);
        D.cmd.Parameters.AddWithValue("@DATAINIZIORAPPORTO", DATAINIZIORAPPORTO);
        D.cmd.Parameters.AddWithValue("@DATAFINERAPPORTO", DATAFINERAPPORTO);
        D.EseguiSPNonRead();
    }
        
    
}