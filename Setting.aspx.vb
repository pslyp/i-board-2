Imports System.IO

Public Class Setting
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        initPage()
    End Sub

    Private Sub initPage()
        'If ddlFile.Items.Count > 0 Then
        '    ddlFile.Items.Clear()
        'End If

        Dim files As String() = Directory.GetFiles(Server.MapPath("resources/image"))
        For Each file In files
            Dim fileName As String = Path.GetFileName(file)
            ddlFile1.Items.Add(fileName)
            ddlFile2.Items.Add(fileName)
            ddlFile3.Items.Add(fileName)
            ddlFile4.Items.Add(fileName)
        Next
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        If Not String.IsNullOrEmpty(txtFromDate.Text.Trim) AndAlso Not String.IsNullOrEmpty(txtToDate.Text.Trim) Then
            Dim fromDate As Date = Convert.ToDateTime(txtFromDate.Text.Trim, New Globalization.CultureInfo("us-EN"))
            Dim toDate As Date = Convert.ToDateTime(txtToDate.Text.Trim, New Globalization.CultureInfo("us-EN"))
            Dim time As String = txtTime.Text.Trim

            Dim kk = ""
        End If

        Dim dd = ""
    End Sub

End Class