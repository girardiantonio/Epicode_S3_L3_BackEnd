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
        private List<string> Carrello
        {
            get
            {
                if (Session["Carrello"] == null)
                {
                    Session["Carrello"] = new List<string>();
                }
                return (List<string>)Session["Carrello"];
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddIngredienti(sender, EventArgs.Empty);
                AddPizze(sender, EventArgs.Empty);
            }
        }

        protected void AddPizze(object sender, EventArgs e)
        {
            List<(string, double)> pizze = new List<(string, double)>
            {
                ("Pizza Margherita", 6.00),
                ("Pizza Marinara", 5.00),
                ("Pizza Diavola", 7.50),
                ("Pizza Capricciosa", 8.00),
                ("Pizza 4 Formaggi", 7.00),
                ("Pizza Kebab", 6.00),
                ("Pizza Napoli", 7.50),
                ("Pizza Mimosa", 4.00),
                ("Pizza Nutella", 3.50),
            };

            if (FindControl("autoSizingSelect") is DropDownList autoSizingSelect)
            {
                autoSizingSelect.Items.Clear();
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

        private string GetSelectedIngredientsText()
        {
            List<string> selectedIngredients = new List<string>();

            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    selectedIngredients.Add(item.Text);
                }
            }
            return string.Join(", ", selectedIngredients);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedPizza = autoSizingSelect.SelectedValue;
            string selectedIngredientsText = GetSelectedIngredientsText();

            if (!string.IsNullOrEmpty(selectedPizza) && selectedPizza != "0")
            {
                string pizzaWithIngredients = $"Pizza: {selectedPizza}<br />Ingredienti: {selectedIngredientsText}";
                Carrello.Add(pizzaWithIngredients);

                Label1.Text = pizzaWithIngredients;

                Session["Carrello"] = Carrello;
            }
            else
            {
                errore.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "" + string.Join("<br />", Carrello);
        }
    }
}