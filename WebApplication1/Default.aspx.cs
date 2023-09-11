using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
         
          
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = DropDownList1.SelectedItem.Value;
            Image1.ImageUrl = $"~/Content/img/{selectedValue}";

            if((selectedValue) == "MINI.png")
            {
                Label2.Text = " 38.000";
            }
            if ((selectedValue) == "FORD.png")
            {
                Label2.Text = "prezzo  20.000 ";
            }
            if ((selectedValue) == "BMW.jpg")
            {
                Label2.Text = "prezzo 50.000 ";
            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double prezzoauto = 0;
            double opzionali = 0;
            double garanzia = 0;
            double totale = 0;
            string sceltaauto = DropDownList1.SelectedItem.Value;


            if ((sceltaauto) == "MINI.png")
            {
               prezzoauto =  38000;
            }
            if ((sceltaauto) == "FORD.png")
            {
                prezzoauto =  20000 ;
            }
            if ((sceltaauto) == "BMW.jpg")
            {
                prezzoauto = 50000;
            }
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    opzionali += Convert.ToDouble(CheckBoxList1.Items[i].Value);
                }
            }


            garanzia = Convert.ToDouble(DropDownList2.SelectedItem.Value) * 120;

            totale = prezzoauto + opzionali+ garanzia;
            Label6.Text = $" ${totale}";
            Label3.Text = $" ${prezzoauto}";
            Label4.Text = $" ${opzionali}";
            Label5.Text = $" ${garanzia}";


        }


       
}


    }
