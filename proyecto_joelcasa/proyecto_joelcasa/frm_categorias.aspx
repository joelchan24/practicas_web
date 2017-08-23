<%@ Page Title="" Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true" CodeBehind="frm_categorias.aspx.cs" Inherits="proyecto_joelcasa.frm_categorias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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
                <asp:TextBox ID="txt_fech" runat="server" CssClass="form-control" type="date" OnTextChanged="txt_fech_TextChanged"></asp:TextBox>

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
             <asp:Button ID="btn_guardar" runat="server" Text="Guardar"  CssClass="btn btn-info" OnClick="guardar"/>
            <asp:Button ID="btn_eliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="btn_eliminar_Click" />
            <asp:Button ID="btn_modificar" runat="server" Text="Editar"  CssClass="btn btn-success"/>
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                     </div>
             </div>     
                 </div>    
         
             </form>

        

        
       </div>
           <div class="col-md-6">
               <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-responsive"></asp:GridView>
        </div>
    
        


  </div>  
            
           

    <br />
    <br />


</asp:Content>
