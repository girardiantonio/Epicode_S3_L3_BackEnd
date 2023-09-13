using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epicode_S3_L3_BackEnd
{
    public partial class Gestione : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AddIngredienti(sender, EventArgs.Empty);
            AddPizze(sender, EventArgs.Empty);
        }

        protected void AddPizze(object sender, EventArgs e)
        {
            List<(string, double)> pizze = new List<(string, double)>
            {
                ("Pizza Margherita", 6.00),
                ("Pizza Marinara", 5.00),
                ("Pizza Diavola", 7.50),
                ("Pizza Capricciosa", 8.00),
                ("Pizza Nutella", 3.00),
            };

            if (FindControl("autoSizingSelect") is DropDownList autoSizingSelect)
            {
                autoSizingSelect.Items.Clear();
                autoSizingSelect.Items.Add(new ListItem("Scegli la tua pizza...", "autoSizingSelect"));
                foreach ((string pizza, double prezzo) in pizze)
                {
                    autoSizingSelect.Items.Add(new ListItem($"{pizza} - ${prezzo:0.00}", pizza));
                }
            }
        }

        protected void AddIngredienti(object sender, EventArgs e)
        {
            List<(string, double)> ingredienti = new List<(string, double)>
            {
                ("Funghi", 2.00),
                ("Peperoni", 1.50),
                ("Cipolla", 1.00),
                ("Olive nere", 2.50),
                ("Prosciutto Crudo", 3.00),
                ("Salsiccia", 2.50),
                ("Pomodori secchi", 2.50),
                ("Mozzarella di Bufala", 2.00),
            };

            if (FindControl("CheckBoxList1") is CheckBoxList CheckBoxList1)
            {
                CheckBoxList1.Items.Clear();
                foreach ((string ingrediente, double prezzo) in ingredienti)
                {
                    CheckBoxList1.Items.Add(new ListItem($"{ingrediente} - ${prezzo:0.00}", ingrediente));
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }


        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}