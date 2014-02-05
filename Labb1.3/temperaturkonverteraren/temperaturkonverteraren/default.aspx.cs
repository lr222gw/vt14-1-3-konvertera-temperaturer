using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace temperaturkonverteraren
{
    public partial class _default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void convertButton_Click(object sender, EventArgs e)
        {
            if(IsValid){


                // räknar ut hur många rader tabellen behöver
                var toDevideWithInterval = int.Parse(stopTemp.Text) - int.Parse(startTemp.Text);

                var numberOfFields = (toDevideWithInterval / int.Parse(interval.Text)) +1; // +1 för att få med första talet man fyller i... DETTA ÄR ANTALET tal som skrivs ut i tabellen

                myTable.Enabled = true; //tar fram tabellen
                
                int theInterval = int.Parse(interval.Text);

                int totalRow = int.Parse(startTemp.Text) - theInterval; // totalRow får värdet av var den ska börja (startTemp), minus värdet av temperatursteget
                                                                        // Detta för att forloopen lägger till värdet av temperatursteget det första den gör = vi vill ha en"clean" start.
                for(var i = 0; i < numberOfFields; i++){//skriver ut första columnen i tabellen..

                    TableRow tRow = new TableRow();
                    TableCell tCell = new TableCell();

                    tCell.Text = (totalRow + theInterval).ToString(); //räknar ut värdet som ska befinna sig i tabellen. 

                    tRow.Cells.Add(tCell);

                    myTable.Rows.Add(tRow);

                    totalRow += theInterval; // ökar för varje "varv" med värdet av temperaturstegen..

                }


                if (cToF_Conv.Checked) // om man ska converta från Celsius till Fahrenheit 
                {
                    
                }
                else // om man ska converta från Fahrenheit  till Celsius 
                {

                }
            }
        }

        protected void CheckedChanged(object sender, EventArgs e)
        {
            convertButton.Enabled = true;
            
        }
    }
}