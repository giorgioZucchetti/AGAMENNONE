using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class DATABASE
{
    public SqlConnection conn = new SqlConnection();
    public string query;
    public SqlCommand cmd = new SqlCommand();
    public SqlDataAdapter DA = new SqlDataAdapter();
    public DataTable DT = new DataTable();

    public DATABASE()
    {
        conn.ConnectionString = "Data Source=LAPTOP-FCU12RLC\\SQLEXPRESS;Initial Catalog=AGAMENNONE;Integrated Security=True;";
        cmd.Connection = conn;
    }

    // carica i dati dal db son una query diretta scritta in ling. sql
    public DataTable EseguiQueryRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        DA.SelectCommand = cmd;
        DataTable DT = new DataTable();
        DA.Fill(DT);
        return DT;
    }

    // esegue INS, UPD e DEL sul dub
    public void EseguiQueryNonRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    // eseguo una stored procedure senza ritorno di dati
    // per tutto il resto: update, insert and delete
    public void EseguiSPNonRead()
    {
        cmd.CommandType = CommandType.StoredProcedure;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    //select
    public DataTable EseguiSPRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        DA.SelectCommand = cmd;
        DA.Fill(DT);
        return DT;
    }
}