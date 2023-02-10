using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;


public class DATABASE
{
    //membri della classe che diventano proprietà dell'oggetto
    public SqlConnection conn = new SqlConnection();
    public string query;
    public SqlCommand cmd = new SqlCommand();
    public SqlDataAdapter DA = new SqlDataAdapter();
    public DataTable DT = new DataTable();
    private readonly string connStr = ConfigurationManager.ConnectionStrings["AGAMENNONEConnectionString"].ConnectionString;
    public DATABASE()
    {
        //ogni volta che instanzio una classe, la imposto con la stringa di connessione corretta
        conn.ConnectionString = connStr;
        cmd.Connection= conn;
    }

    //eseguo una stored procedure senza che ritornino dei dati
    public void EseguiSPNonRead()
    {
        cmd.CommandType = CommandType.StoredProcedure;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    public DataTable EseguiSPRead()
    {
        cmd.CommandType = CommandType.StoredProcedure;
        DA.SelectCommand = cmd;
        DA.Fill(DT);
        return DT;
    }


}