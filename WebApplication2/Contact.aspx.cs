using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace WebApplication2
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
      /*      try
            {
                var from = "boodhoostore605@gmail.com";
                var to = "boodhoostore605@gmail.com";
                const string Password = "boodhoo605";
                string mail_subject = txt_subject.Text.ToString();
                string mail_message = "From: " + txt_name + "/n";
                mail_message += "Email: " + txt_email.Text + "/n";
                mail_message += "Phone: " + txt_phone.Text + "/n";
                mail_message += "Subject: " + txt_subject.Text + "/n";
                mail_message += "Message: " + txt_message.Text + "/n";

                var smtp = new SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(from, Password);
                    smtp.Timeout = 20000;

                }
                smtp.Send(from, to, mail_subject, mail_message);

                Confirm.Text = "Thank You For Your Email!";

                txt_name.Text = "";
                txt_email.Text = "";
                txt_phone.Text = "";
                txt_subject.Text = "";
                txt_message.Text = "";


            }
            catch(Exception)
            {
                Confirm.Text = "Something went wrong! Please try again";
                Confirm.ForeColor = Color.Red;
            }
            */
        }
    }
}