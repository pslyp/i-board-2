<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Setting.aspx.vb" Inherits="i_board_2.Setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <span>Date</span>&nbsp
                    <asp:TextBox ID="txtFromDate" runat="server" TextMode="Date"></asp:TextBox>
                    &nbsp-&nbsp
                    <asp:TextBox ID="txtToDate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <span>Time</span>&nbsp
                    <asp:TextBox ID="txtTime" runat="server" TextMode="Time"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <table>
            <thead>
                <tr>
                    <td>File</td>
                    <td>Transition</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlFile1" runat="server" Width="104px">
                            <asp:ListItem Selected="True" Value="0">-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlTransition1" runat="server">
                            <asp:ListItem Selected="True" Value="0">None</asp:ListItem>
                            <asp:ListItem Value="1">Fade</asp:ListItem>
                            <asp:ListItem Value="2">Slide from right</asp:ListItem>
                            <asp:ListItem Value="3">Slide from left</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlFile2" runat="server" Width="104px">
                            <asp:ListItem Selected="True" Value="0">-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlTransition2" runat="server">
                            <asp:ListItem Selected="True" Value="0">None</asp:ListItem>
                            <asp:ListItem Value="1">Fade</asp:ListItem>
                            <asp:ListItem Value="2">Slide from right</asp:ListItem>
                            <asp:ListItem Value="3">Slide from left</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlFile3" runat="server" Width="104px">
                            <asp:ListItem Selected="True" Value="0">-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlTransition3" runat="server">
                            <asp:ListItem Selected="True" Value="0">None</asp:ListItem>
                            <asp:ListItem Value="1">Fade</asp:ListItem>
                            <asp:ListItem Value="2">Slide from right</asp:ListItem>
                            <asp:ListItem Value="3">Slide from left</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlFile4" runat="server" Width="104px">
                            <asp:ListItem Selected="True" Value="0">-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlTransition4" runat="server">
                            <asp:ListItem Selected="True" Value="0">None</asp:ListItem>
                            <asp:ListItem Value="1">Fade</asp:ListItem>
                            <asp:ListItem Value="2">Slide from right</asp:ListItem>
                            <asp:ListItem Value="3">Slide from left</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </tbody>
        </table>
        <%-- <table>
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
                        <asp:DropDownList ID="ddlFile" runat="server">
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
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Image</asp:ListItem>
                            <asp:ListItem>Audio</asp:ListItem>
                            <asp:ListItem>Video</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>None</asp:ListItem>
                            <asp:ListItem>Fade</asp:ListItem>
                            <asp:ListItem>Slide from right</asp:ListItem>
                            <asp:ListItem>Slide from left</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </tbody>
        </table>--%>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </div>
</asp:Content>
