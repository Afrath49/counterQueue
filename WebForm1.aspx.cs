using Antlr.Runtime;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace counterQueue
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tokenQueue"] == null) { 
                Queue<int> tokenNumber = new Queue<int>();
            Session["tokenQueue"] = tokenNumber;
            lblStatus.Text = "There is no customer";

        }

        }

        protected void btnPrinttoken_Click(object sender, EventArgs e)
        {
           Queue<int> tokenNo = (Queue<int>)Session["tokenQueue"];

            lblStatus.Text = "There are " + tokenNo.Count.ToString() + " customers before you in the queue" ;

            if(Session["lastTokenIssued"] == null)
            {
                Session["lastTokenIssued"] = 0;

            }

            int nextTokenNum = (int)Session["lastTokenIssued"] + 1;
            Session["lastTokenIssued"] = nextTokenNum;

            tokenNo.Enqueue(nextTokenNum);
            AddTokentoList(tokenNo);

           
        }

        public void AddTokentoList(Queue<int> tokenNo)
        {
            txtListbox.Items.Clear();

            foreach (int token in tokenNo)
            {
                txtListbox.Items.Add(token.ToString());
            }
        }


        private void nextCustomer(TextBox textbox , int counterNum)
        {
            Queue<int> tokenNo = (Queue<int>)Session["tokenQueue"];

            if (tokenNo.Count == 0)
            {
               textbox.Text = "No customer in the queue";
            }
            else
            {

                int tokenNumber = tokenNo.Dequeue();
                textbox.Text = tokenNumber.ToString();

                txtDisplay.Text = "Token Number: " + tokenNumber.ToString() + " Go to counter " + counterNum;

                if(tokenNo.Count > 0) {
                    lblStatus.Text = "There are " + (tokenNo.Count - 1).ToString() + " Customers behind you";
                }
                else
                {
                    lblStatus.Text = "There is no customer";
                }

                

                AddTokentoList(tokenNo);
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            nextCustomer(txtCounter1, 1);
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            nextCustomer(txtCounter2, 2);
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            nextCustomer(txtCounter3, 3);
        }

        
    }
}