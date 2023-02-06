﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

public class DATABASE
{
    public SqlConnection conn = new SqlConnection();
    public SqlCommand cmd = new SqlCommand();
    public DataTable DT = new DataTable();
    public SqlDataAdapter DA = new SqlDataAdapter();

    public DATABASE()
    {
        conn.ConnectionString = "Data Source=LAPTOP-BQ8Q9CH0;Initial Catalog=AGAMENNONE;Integrated Security=true";
        cmd.Connection = conn;
    }

    // carica i dati dal DB con una query diretta, scritta in SQL
    public DataTable EseguiQueryRead(string query)
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        DA.SelectCommand = cmd;
        DA.Fill(DT);
        return DT;
    }

    //esegue INS, UPD, e DEL del DB
    public void EseguiQueryNonRead(string query)
    {
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

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