using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epicode_S3_L3_BackEnd
{
    public partial class Gestione : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AddElement(sender, EventArgs.Empty);
        }

        protected void AddElement(object sender, EventArgs e)
        {
            // Crea una lista di ingredienti casuali
            List<string> ingredientiCasuali = new List<string>
            {
            "Funghi (+ 2,00)",
            "Peperoni (+ 1,50)",
            "Cipolla (+ 1,00)",
            "Olive nere (+ 2,50)",
            "Prosciutto Crudo (+ 3,00)",
            "Prosciutto Cotto (+ 3,00)",
            "Pomodori secchi (+ 2,50)",
            "Ananas (+ 2,00)",
            "Salsiccia (+ 2,50)",
            "Mozzarella Buf (+ 2,00)",
            };

            // Assegna ingredienti ai CheckBox
            for (int i = 0; i < 10 && i < ingredientiCasuali.Count; i++)
            {
                string ingredienteCasuale = ingredientiCasuali[i];

                CheckBox checkBox = (CheckBox)FindControl("CheckBox" + (i + 1));
                if (checkBox != null)
                {
                    checkBox.Text = ingredienteCasuale;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}