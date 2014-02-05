using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace temperaturkonverteraren.Model
{
    public static class TemperatureConverter
    {
        public static int CelsiusToFahrenheit(int degreesC)
        {
            double fahrenheit = ((degreesC * 1.8) + 32);
            return (int)fahrenheit; // skickar tillbaka fahrenheit som en int..
        
        }
        
        public static int FahrenheitToCelsius(int degreesF)
        {
            double celsius = (degreesF - 32) * ((double)5/9);
            return (int)celsius;
        }
    }
}