using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls; // denna är tillagd för att kunna använda Table som en Typ!

namespace temperaturkonverteraren.Model
{
    public static class tabelizer
    {
        public static Table tabelToNewFormat(Table inData, string CtoF_OR_FtoC)
        {


            for (var i = 0; i < inData.Rows.Count; i++ )
            {
                var aCell = new TableCell();
                if (CtoF_OR_FtoC == "C") // om vi ska ta reda på CelsiusToFahrenheit så skickar vi med ett C som string
                {
                    aCell.Text = (TemperatureConverter.CelsiusToFahrenheit(int.Parse(inData.Rows[i].Cells[0].Text))).ToString();
                }//Skapat en ny tabell cell, innehållet blir det omräknade värdet av vad som redan finns i tabellen fast i Fahrenheit form! 
                else if (CtoF_OR_FtoC == "F")
                {
                    aCell.Text = (TemperatureConverter.FahrenheitToCelsius(int.Parse(inData.Rows[i].Cells[0].Text))).ToString();
                }

                inData.Rows[i].Cells.AddAt(1, aCell); //Denna rad lägger in aCell i  "cellrummet" brevid den första kolumnen (alltså 0)
            }


            return inData;
        }


    }
}