<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <h1>seleziona auto</h1>
            <label for="modello">Seleziona auto</label>
            <asp:DropDownList ID="DropDownList1" runat="server"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" >
             <asp:ListItem  Value="MINI.png " Text="mini cooper s"></asp:ListItem>          
            <asp:ListItem Value="FORD.png" Text="ford mondeo"></asp:ListItem>  
            <asp:ListItem Value="BMW.jpg" Text="bmw serie 3"></asp:ListItem>               
            </asp:DropDownList>
             <asp:Image ID="Image1" Width="200px" runat="server" />
            <h4>prezzo auto</h4>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
          
        
  

            <br/>
            <h2>OPZIONI</h2>
            <asp:Label ID="Label1" runat="server" Text="opzioni"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                  <asp:ListItem Text="Vernice metallizzata " Value="330" />
                    <asp:ListItem Text="Fari Xeno" Value="180" />
                    <asp:ListItem Text="Sistema navigazione satellitare" Value="1800" />
                    <asp:ListItem Text="Line Assistant " Value="2000" />
                    <asp:ListItem Text="Ruota di scorta " Value="155" />
                    <asp:ListItem Text="Sedili/volante in pelle" Value="700" />

            </asp:CheckBoxList>


            <h2>GARANZIA</h2>
            <asp:DropDownList ID="DropDownList2" runat="server">
                 <asp:ListItem Text="1 anno" Value="1" />
                    <asp:ListItem Text="2 anni" Value="2" />
                    <asp:ListItem Text="3 anni" Value="3" />
                    <asp:ListItem Text="4 anni" Value="4" />
            </asp:DropDownList>


            <asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="CALCOLA PREVENTIVO" OnClick="Button1_Click" />

            <p>costo auto</p>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            
            <p>costo opzionali</p>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            
            <p>costo garanzia</p>
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>

            <h2>totalecomplessivo</h2>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
