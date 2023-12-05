<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Setting.aspx.vb" Inherits="i_board_2.Setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table>
            <thead>
                <tr>
                    <td>Type</td>
                    <td>File</td>
                    <td>Transition</td>
                    <td>Duration</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlMediaType" runat="server">
                            <asp:ListItem>Image</asp:ListItem>
                            <asp:ListItem>Audio</asp:ListItem>
                            <asp:ListItem>Video</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlImageFile" runat="server">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlAnimateType" runat="server">
                            <asp:ListItem>None</asp:ListItem>
                            <asp:ListItem>Fade</asp:ListItem>
                            <asp:ListItem>Slide from right</asp:ListItem>
                            <asp:ListItem>Slide from left</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlDuration" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <asp:Button ID="btnSave" runat="server" Text="Save" />
    </div>
</asp:Content>
