using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.InteropServices.WindowsRuntime;
using System.ServiceModel.Dispatcher;

/// <summary>
/// Descrizione di riepilogo per Database
/// </summary>
/// 
public class DATABASE
{
    public SqlConnection conn = new SqlConnection();
    public string query;
    public SqlCommand cmd = new SqlCommand();
    public SqlDataAdapter DA = new SqlDataAdapter();
    DataTable DT = new DataTable();
    public DATABASE()
    {
        conn.ConnectionString = @"Data Source=BISHOP\SQLEXPRESS;Initial Catalog=AGAMENNONE;Integrated Security=True;";
        cmd.Connection = conn;

    }

    public DataTable EseguiQueryRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        DA.SelectCommand = cmd;
        DA.Fill(DT);
        return DT;

    }

    //esegue INS,UPD e DEL sul DB

    public void EseguiQueryNonRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    //eseguo una stored procedure senza ritorno di dati
    public void EseguiSPNonRead()
    {
        cmd.CommandType = CommandType.StoredProcedure;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public DataTable EseguiSPRead()
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        DA.SelectCommand = cmd;
        DA.Fill(DT);
        return DT;

    }

}
