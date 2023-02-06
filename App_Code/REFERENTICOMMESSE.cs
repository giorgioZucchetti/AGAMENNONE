using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class REFERENTICOMMESSE
{
    public int chiave;
    public int chiaveREFERENTE;
    public int chiaveCOMMESSA;


    public void REFERENTICOMMESSE_Insert()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spREFERENTICOMMESSE_Insert";
        D.cmd.Parameters.AddWithValue("@chiaveREFERENTE", chiaveREFERENTE);
        D.cmd.Parameters.AddWithValue("@chiaveCOMMESSA", chiaveCOMMESSA);
        D.EseguiSPNonRead();
    }

    public void REFERENTICOMMESSE_Delete()
    {
        DATABASE D = new DATABASE();
        D.cmd.CommandText = "spREFERENTICOMMESSE_Delete";
        D.cmd.Parameters.AddWithValue("@chiaveREFERENTE", chiaveREFERENTE);
        D.EseguiSPNonRead();
    }
}