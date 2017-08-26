<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmss.aspx.cs" Inherits="proyecto_joelcasa.frmss" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div class="container-fluid">
     
         <div class="col-md-6">
             <form class="" role="form" style="height:auto;width:100%;margin: 50px;border-color:aqua;">
                 <div class="row">
		<div class="col-md-12">
            <div class="form-group">
                <label>NOMBRE</label>
                <asp:HiddenField ID="txt_id" runat="server" />
                <asp:TextBox ID="txt_nom" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
             <div class="form-group">
                <label>Fecha Salida</label>
                <asp:TextBox ID="txt_fech" runat="server" CssClass="form-control" type="date" ></asp:TextBox>

            </div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
              <label>Origen</label>
                <asp:TextBox ID="txt_origen" runat="server" CssClass="form-control"></asp:TextBox>

		</div>
		<div class="col-md-6">
              <label>Destino</label>
                <asp:TextBox ID="txt_destino" runat="server" CssClass="form-control"></asp:TextBox>
		</div>
	</div>
                 <br />
                 <br />
                 <hr  style="color:aqua"/>
             <div class="row">
                 <div class="form-group">
                 <div class="col-md-12">
             <asp:Button ID="btn_guardar" runat="server" Text="Guardar"  CssClass="btn btn-info" OnClick="btn_guardar_Click" />
            <asp:Button ID="btn_eliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" />
            <asp:Button ID="btn_modificar" runat="server" Text="Editar"  CssClass="btn btn-success"/>
                     <asp:Button ID="Button1" runat="server"  Text="Button" />
                     </div>
             </div>     
                 </div>    
         
             </form>

        

        </div>
              </div>
    <div>
    
    </div>
    </form>
</body>
</html>
