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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (autoSizingSelect.SelectedValue != "Scegli la sala...")
            {
                string sala = autoSizingSelect.SelectedValue;
                bool ridotto = autoSizingCheck.Checked;

                // Verifica se le variabili di sessione per i contatori esistono già
                if (Session["bigliettiVenduti" + sala] == null)
                {
                    Session["bigliettiVenduti" + sala] = 0;
                }

                if (Session["bigliettiRidotti" + sala] == null)
                {
                    Session["bigliettiRidotti" + sala] = 0;
                }

                // Aggiorna il conteggio per la sala selezionata
                int bigliettiVenduti = (int)Session["bigliettiVenduti" + sala];
                int bigliettiRidotti = (int)Session["bigliettiRidotti" + sala];

                bigliettiVenduti++;
                Session["bigliettiVenduti" + sala] = bigliettiVenduti;

                if (ridotto)
                {
                    bigliettiRidotti++;
                    Session["bigliettiRidotti" + sala] = bigliettiRidotti;
                }

                // Aggiorna il testo delle etichette con i nuovi conteggi
                if (sala == "1")
                {
                    // Sala NORD
                    Label1.Text = "Biglietti venduti SALA NORD: " + bigliettiVenduti + ", di cui ridotti: " + bigliettiRidotti;
                }
                else if (sala == "2")
                {
                    // Sala SUD
                    Label2.Text = "Biglietti venduti SALA SUD: " + bigliettiVenduti + ", di cui ridotti: " + bigliettiRidotti;
                }
                else if (sala == "3")
                {
                    // Sala EST
                    Label3.Text = "Biglietti venduti SALA EST: " + bigliettiVenduti + ", di cui ridotti: " + bigliettiRidotti;
                }
            }
        }
    }
}