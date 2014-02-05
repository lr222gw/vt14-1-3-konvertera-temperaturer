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
                if (cToF_Conv.Checked) // om man ska converta från Celsius till Fahrenheit 
                {
                    
                }
                else// om man ska converta från Fahrenheit  till Celsius 
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