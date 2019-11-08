using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    double a, b, c,d,detax, tax, salary, bonus, cit, net;
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

  /*  protected void btnPrint_Click(object sender, EventArgs e)
    {
        lblName.Text = "Your multiplication is " +(int.Parse(txt1.Text)* int.Parse(txt2.Text));
    } */

    protected void btnCalc_Click(object sender, EventArgs e)
    {
        salary = Convert.ToDouble(txtSalary.Text);
        bonus = Convert.ToDouble(txtBonus.Text);
        cit = Convert.ToDouble(txtCit.Text);

        lblNames.Text = " Hello " + txtName.Text;

        //Total Annual Income
        a = (salary * 12) + bonus;
        lblIncome.Text = a.ToString();
        // Total Deductible Tax
        b = cit * 12;
        lblTax.Text = b.ToString();

        //Total Taxable Income
        d = a - b;
        lblTaxIncome.Text = d.ToString();


        //Annual Tax
        if (married.Checked)
        {
            if (d<=450000)
            {
                c = d * 0.01;
            }
            else if(d>450000 && d <=550000)
            {
                c = (450000 * 0.01) + ((d - 450000) * 0.1);
            }
            else if ( d>550000 && d<=750000)
            {
                c = (450000 * 0.01) + (100000 * 0.1) + ((d - 550000) * 0.2);
            }
            else if ( d>750000 && d<= 2000000)
            {
                c = (450000 * 0.01) + (100000 * 0.1) + ((d - 750000) * 0.3);
            }
            else
            {
                c = (450000 * 0.01) + (100000 * 0.1) + (750000 * 0.3)+((d - 750000) * 0.36);
            }
            lblAtxa.Text = c.ToString();
        }
        else
        {
            if (d <= 400000)
            {
                c = d * 0.01;
            }
            else if (d > 400000 && d <= 500000)
            {
                c = (400000 * 0.01) + ((d - 400000) * 0.1);
            }
            else if (d > 500000 && d <= 700000)
            {
                c = (400000 * 0.01) + (100000 * 0.1) + ((d - 500000) * 0.2);
            }
            else if(d > 700000 && d <= 2000000)
            {
                c = (400000 * 0.01) + (100000 * 0.1) + ((d - 700000) * 0.3);
            }
            else
            {
                c = (400000 * 0.01) + (100000 * 0.1) + (700000 * 0.3) + ((d - 700000) * 0.36);
            }
            lblAtxa.Text = c.ToString();

        }
 
        //Monthly Tax
        tax = c / 12;
        lblMtax.Text = tax.ToString();

        //Monthly Income
        lblMincome.Text = txtSalary.Text;

        // Monthly deductible
        detax = tax + cit;
        lblMdeduct.Text = detax.ToString();

        //Net Monthly Income
        net = salary - detax;
        lblNetIncome.Text = net.ToString();

    }
}