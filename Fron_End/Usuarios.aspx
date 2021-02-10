<%@ Page Title="USUARIOS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Fron_End.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="menu-nav">
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
            <a href="Inicio.aspx" class="menu-link">
                <span class="menu-text">INICIO</span>
            </a>
        </li>
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
            <a href="Nosotros.aspx" class="menu-link">
                <span class="menu-text">NOSOTROS</span>
            </a>
        </li>
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
            <a href="Becas.aspx" class="menu-link">
                <span class="menu-text">BECAS</span>
            </a>
        </li>
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
            <a href="Noticias.aspx" class="menu-link">
                <span class="menu-text">NOTICIAS</span>
            </a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <!--begin::Subheader-->
        <div class="subheader min-h-lg-175px pt-5 pb-7 subheader-transparent" id="kt_subheader">
            <div class="container d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                <!--begin::Details-->
                <div class="d-flex align-items-center flex-wrap mr-2">
                    <!--begin::Heading-->
                    <div class="d-flex flex-column">
                        <!--begin::Title-->
                        <h2 class="text-white font-weight-bold my-2 mr-5"><%: Page.Title %></h2>
                        <!--end::Title-->
                        <!--begin::Breadcrumb-->
                        <div class="d-flex align-items-center font-weight-bold my-2">
                            <!--begin::Item-->
                            <a href="Inicio.aspx" class="opacity-75 hover-opacity-100">
                                <i class="flaticon2-shelter text-white icon-1x"></i>
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <span class="label label-dot label-sm bg-white opacity-75 mx-3"></span>
                            <a href="Usuarios.aspx" class="text-white text-hover-white opacity-75 hover-opacity-100"><%: Page.Title %></a>
                            <!--end::Item-->
                        </div>
                        <!--end::Breadcrumb-->
                    </div>
                    <!--end::Heading-->
                </div>
                <!--end::Details-->
            </div>
        </div>
        <!--end::Subheader-->
        <!--begin::Entry-->
        <div class="d-flex flex-column-fluid">
            <!--begin::Container-->
            <div class="container">
                <!--begin::Card-->
                <div class="card card-custom gutter-b">
                    <div class="card-header flex-wrap border-0 pt-6 pb-0">
                        <div class="card-title">
                            <h3 class="card-label">Usuarios</h3>
                        </div>
                        <div class="card-toolbar">
                            <!--begin::Dropdown-->
                            <!--begin::Button-->
                            <a href="RegistroUsuario.aspx" class="btn btn-primary font-weight-bolder">
                                <span class="svg-icon svg-icon-md">
                                    <!--begin::Svg Icon | path:assets/media/svg/icons/Design/Flatten.svg-->
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                            <rect x="0" y="0" width="24" height="24" />
                                            <circle fill="#000000" cx="9" cy="15" r="6" />
                                            <path d="M8.8012943,7.00241953 C9.83837775,5.20768121 11.7781543,4 14,4 C17.3137085,4 20,6.6862915 20,10 C20,12.2218457 18.7923188,14.1616223 16.9975805,15.1987057 C16.9991904,15.1326658 17,15.0664274 17,15 C17,10.581722 13.418278,7 9,7 C8.93357256,7 8.86733422,7.00080962 8.8012943,7.00241953 Z" fill="#000000" opacity="0.3" />
                                        </g>
                                    </svg>
                                    <!--end::Svg Icon-->
                                </span>Registrar Usuario</a>
                            <!--end::Button-->
                        </div>
                    </div>
                    <div class="card-body">
                        <!--begin: Datatable-->
                        <div class="table-responsive">
                            <asp:GridView ID="gvUsuario" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center"
                                CssClass="table table-bordered" Width="100%" CellSpacing="0" DataKeyNames="IdUsuario" OnRowEditing="gvUsuario_RowEditing"
                                OnRowCancelingEdit="gvUsuario_RowCancelingEdit" OnRowUpdating="gvUsuario_RowUpdating" OnRowDeleting="gvUsuario_RowDeleting">
                                <Columns>
                                    <asp:TemplateField HeaderText="IdUsuario">
                                        <ItemTemplate>
                                            <asp:Label ID="txtIdUsuario" Text='<%# Eval("IdUsuario") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Label ID="txtIdUsuario" Text='<%# Eval("IdUsuario") %>' runat="server"></asp:Label>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Nombres">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Nombres") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtNombres" class="form-control form-control-solid form-control-lg"
                                                runat="server" Text='<%# Bind("Nombres") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Apellidos">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Apellidos") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtApellidos" class="form-control form-control-solid form-control-lg"
                                                runat="server" Text='<%# Bind("Apellidos") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Dirección">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Direccion") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDireccion" class="form-control form-control-solid form-control-lg"
                                                runat="server" Text='<%# Bind("Direccion") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Teléfono">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Celular") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCelular" class="form-control form-control-solid form-control-lg"
                                                runat="server" Text='<%# Bind("Celular") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Correo">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Correo") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCorreo" class="form-control form-control-solid form-control-lg"
                                                runat="server" Text='<%# Bind("Correo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="DNI">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("NumDocIdentidad") %>' runat="server" ID="lblTipoUsuario"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDNI" class="form-control form-control-solid form-control-lg"
                                                runat="server" Text='<%# Bind("NumDocIdentidad") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Acciones" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:LinkButton NavigateUrl="#" ID="btnEdit" runat="server" CssClass="btn btn-warning btn-circle" CommandName="Edit" ToolTip="Edit">
                                    <i class="fas fa-pen"></i>
                                            </asp:LinkButton>

                                            <asp:LinkButton NavigateUrl="#" ID="btnDelete" runat="server" CssClass="btn btn-danger btn-circle" CommandName="Delete" ToolTip="Delete">
                                    <i class="fas fa-trash"></i>
                                            </asp:LinkButton>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:LinkButton NavigateUrl="#" ID="btnUpdate" runat="server" CssClass="btn btn-success btn-circle" CommandName="Update" ToolTip="Update">
                                    <i class="far fa-save"></i>
                                            </asp:LinkButton>
                                            <asp:LinkButton NavigateUrl="#" ID="btnCancel" runat="server" CssClass="btn btn-warning btn-circle" CommandName="Cancel" ToolTip="Cancel">
                                    <i class="fas fa-window-close"></i>
                                            </asp:LinkButton>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <!--end: Datatable-->
                    </div>
                </div>
                <!--end::Card-->
            </div>
            <!--end::Container-->
        </div>
        <!--end::Entry-->
    </div>
</asp:Content>
