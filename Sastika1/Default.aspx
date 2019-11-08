<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
        </p>
        Monthly Salary :
        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
        <p>
            Bonus:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtBonus" runat="server"></asp:TextBox>
        </p>
        CIT/PF:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCit" runat="server"></asp:TextBox>
        <p>
            Marital Status :&nbsp;&nbsp;
            
            <asp:RadioButton ID="married" runat="server" GroupName="Mstatus"  />
            &nbsp; Married&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="unmarried" runat="server" GroupName="Mstatus" />
            
        &nbsp;Unmarried</p>
        <p>
            <asp:Button ID="btnCalc" runat="server" OnClick="btnCalc_Click" Text="Calculate" />
        </p>
        <p>
            <asp:Label ID="lblNames" runat="server" Text="Label"></asp:Label>
        </p>
        Total Annual Income:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="lblIncome" runat="server" Text="Label"></asp:Label>
        <p>
            Toatl Deductible Tax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblTax" runat="server" Text="Label"></asp:Label>
        </p>
        Total Taxable Income:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblTaxIncome" runat="server" Text="Label"></asp:Label>
        <p>
            Annual Tax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblAtxa" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            Monthly Tax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblMtax" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            Monthly Income:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblMincome" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            Monthly Deductible:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMdeduct" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            Net Monthly Income:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblNetIncome" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
