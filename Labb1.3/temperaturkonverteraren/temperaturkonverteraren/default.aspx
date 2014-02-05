<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="temperaturkonverteraren._default"  ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="startTemp" runat="server"></asp:TextBox>

        <asp:TextBox ID="stopTemp" runat="server"></asp:TextBox>

        <asp:TextBox ID="interval" runat="server"></asp:TextBox>

        <asp:RadioButton ID="cToF_Conv" runat="server" GroupName="convertType" Text="Celsius to Fahrenheit"/>
        <asp:RadioButton ID="fToC_Conv" runat="server" GroupName="convertType"  Text="Fahrenheit to Celsius"/>

        <asp:Button ID="convertButton" runat="server" Text="Konvertera" />
    </div>
    </form>
</body>
</html>
