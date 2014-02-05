<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="temperaturkonverteraren._default"  ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet"  href="style/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="validationSummary" runat="server" />
        <asp:Label ID="startLabel" runat="server" Text="Starttemperatur"></asp:Label>
        <asp:TextBox ID="startTemp" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="startTempRFV" runat="server"   ErrorMessage="Fältet får inte vara tomt!" Display="Dynamic" SetFocusOnError="True" ControlToValidate="startTemp">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="startTempCV" runat="server" ErrorMessage="Bara tecken som är siffror är giltiga."  ControlToValidate="startTemp" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" Display="Dynamic">*</asp:CompareValidator>

        <asp:Label ID="stopLabel" runat="server" Text="Sluttemperatur"></asp:Label>
        <asp:TextBox ID="stopTemp" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="stopTempRFV" runat="server" ErrorMessage="Fältet får inte vara tomt!" Display="Dynamic" SetFocusOnError="True" ControlToValidate="stopTemp">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="stopTempCV" runat="server" ErrorMessage="Bara tecken som är siffror är giltiga." Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"  ControlToValidate="stopTemp" Display="Dynamic">*</asp:CompareValidator>
        <asp:CompareValidator ID="StopTempMoreThanStartTemp" runat="server" ErrorMessage="Sluttemperaturen måste vara högre än starttemperaturen" ControlToCompare="startTemp" ControlToValidate="stopTemp" Display="Dynamic" Operator="GreaterThan" SetFocusOnError="True" Type="Integer" >*</asp:CompareValidator>

        <asp:Label ID="intrevalLabel" runat="server" Text="Temperatursteg"></asp:Label>
        <asp:TextBox ID="interval" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="intervalRFV" runat="server" ErrorMessage="Fältet får inte vara tomt!" Display="Dynamic" SetFocusOnError="True" ControlToValidate="interval">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="intervalCV" runat="server" ErrorMessage="Bara tecken som är siffror är giltiga."  ControlToValidate="interval" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" Display="Dynamic">*</asp:CompareValidator>
        <asp:RangeValidator ID="intervalRV" runat="server" ErrorMessage="Du kan bara ange ett tal mellan 1-100" Display="Dynamic" ControlToValidate="interval" Type="Integer"  MaximumValue="100" MinimumValue="1">*</asp:RangeValidator>

        <asp:RadioButton ID="cToF_Conv" runat="server" GroupName="convertType" Text="Celsius to Fahrenheit" OnCheckedChanged="CheckedChanged" AutoPostBack="true"/> <%--AutoPostBack="true" gör att onCheckedChanged eventet fungerar.. --%>
        <asp:RadioButton ID="fToC_Conv" runat="server" GroupName="convertType"  Text="Fahrenheit to Celsius"  OnCheckedChanged="CheckedChanged"  AutoPostBack="true"/>

        <asp:Button ID="convertButton" runat="server" Text="Konvertera" OnClick="convertButton_Click" Enabled="false" />

        <asp:Table ID="myTable" runat="server" Enabled="false" ViewStateMode="Enabled"></asp:Table>

    </div>
    </form>
</body>
</html>
