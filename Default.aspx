<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Dalvangs portfolie</h1>
            <article>Dette er en midlertidig hjemmeside, som indtil videre kun fungerer som en oversigt for mine skoleprojekter</article>
<section>
    <h2>Mine projekter</h2>
    <asp:Repeater ID="ProjectsRpt" runat="server" DataSourceID="ProjectsSqlDs">
        <ItemTemplate>
            <li><a href='<%# "http://www." + Eval("WebAddress") %>'><%# Eval("Name") %></a></li>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource runat="server" ID="ProjectsSqlDs" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [Name], [WebAddress], [Id] FROM [Projects]"></asp:SqlDataSource>
</section>

        </div>
    </form>
</body>
</html>
