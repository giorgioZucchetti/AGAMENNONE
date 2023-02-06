using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;


public class MAIL
{
    // membri della classe
    SmtpClient client = new SmtpClient();
    MailMessage mail = new MailMessage();
    public string EMAIL;
    public string PWD;
    public MAIL() //costruttore della classe
    {
        client.Credentials = new NetworkCredential("generation@brovia.it", "!Pr0secc0!"); //indirizzo che spedisce tutte le mail
        client.Port = 25;
        client.Host = "brovia.it";
    }

    public void Mail_Send_Admin()
    {
        //imposto il messaggio
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("generation@brovia.it");
        mail.To.Add("giorgio.zucchetti00@gmail.com"); //Mail dell'admin //il metodo add serve perchè la mail può essere inviata a più persone
        mail.IsBodyHtml = true;
        mail.Subject = "REGISTRAZIONE UTENTE";
        mail.Body = "<h4>Ciao!</h4><br/>";
        mail.Body += "<h1>La seguente mail </h1>"+EMAIL+"<h1>Sta tentando di iscriversi al portale.</h1>";
        mail.Body += "<h1>Puoi abilitarlo accedendo a questa pagina:</h1>";                             //concatenazione di stringhe
        client.Send(mail);

    }

    public void Mail_Send_Utente()
    {
        //imposto il messaggio
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("generation@brovia.it");
        mail.To.Add(EMAIL);  //il metodo add serve perchè la mail può essere inviata a più persone
        mail.IsBodyHtml = true;
        mail.Subject = "REGISTRAZIONE";
        mail.Body = "<h4>Ciao!</h4><br/>";
        mail.Body += "<h1>Sei stato abilitato </h1>";                             
        client.Send(mail);
    }

    public void Mail_Send_Utente_Pwd() 
    {
        //imposto il messaggio
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("generation@brovia.it");
        mail.To.Add(EMAIL);  //il metodo add serve perchè la mail può essere inviata a più persone
        mail.IsBodyHtml = true;
        mail.Subject = "PASSWORD TEMPORANEA";
        mail.Body = "<h4>Ciao!</h4><br/>";
        mail.Body += "<h1>La tua password temporanea é: </h1>"+PWD;
        client.Send(mail);
    }


}