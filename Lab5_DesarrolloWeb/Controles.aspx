<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Controles.aspx.cs" Inherits="Lab5_DesarrolloWeb.Controles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 677px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 163px;
        }
        .auto-style3 {
            width: 163px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 858px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style5">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Documento</td>
                    <td>
                        <asp:DropDownList ID="ddlTipo" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlTipo" ErrorMessage="Seleccione tipo documento" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nacionalidad</td>
                    <td>
                        <asp:TextBox ID="txtNacionalidad" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Nacionalidad requerida">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nombres</td>
                    <td>
                        <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombres" ErrorMessage="Nombre requerido">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Apellidos</td>
                    <td>
                        <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtApellidos" ErrorMessage="Apellidos requerido">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Sexo</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlSexo" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlSexo" ErrorMessage="Seleccione sexo" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Fecha Nacimiento</td>
                    <td>
                        <asp:TextBox ID="txtFechaNacimiento" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFechaNacimiento" ErrorMessage="Fecha de nacimiento requerida">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Direccion</td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Direccion requerida">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Foto</td>
                    <td>
                        <asp:FileUpload ID="fuFoto" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="fuFoto" ErrorMessage="Seleccione una imagen" InitialValue="0">*</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Sueldo</td>
                    <td>
                        <asp:TextBox ID="txtSueldo" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSueldo" ErrorMessage="Sueldo requerido">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Empleador</td>
                    <td>
                        <asp:TextBox ID="txtEmpleador" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmpleador" ErrorMessage="Empleador requerido">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Fecha de Ingreso</td>
                    <td>
                        <asp:TextBox ID="txtFechaIngreso" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtFechaIngreso" ErrorMessage="Fecha de ingreso requerida">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Cantidad de Hijos</td>
                    <td>
                        <asp:TextBox ID="txtCantidadHijos" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCantidadHijos" ErrorMessage="Cantidad de hijos requerida">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Cantidad de Padres</td>
                    <td>
                        <asp:TextBox ID="txtCantidadPadres" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtCantidadPadres" ErrorMessage="Cantidad de padres requerida">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        <asp:CheckBox ID="cboAceptar" runat="server" Text="Aceptar" />
        <br />
        <p>
            <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
        </p>
        <asp:TextBox ID="txtSalida" runat="server" Height="500px" TextMode="MultiLine" Width="380px" Columns="13"></asp:TextBox>
                        <asp:Image ID="imgFoto" runat="server" />
    </form>
</body>
</html>
