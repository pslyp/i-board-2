Imports System.IO

Public Class Setting
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        initPage()
    End Sub

    Private Sub initPage()
        If ddlFile.Items.Count > 0 Then
            ddlFile.Items.Clear()
        End If

        Dim files As String() = Directory.GetFiles(Server.MapPath("resources/image"))
        For Each file In files
            Dim fileName As String = Path.GetFileName(file)
            ddlFile.Items.Add(fileName)
        Next
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim file
    End Sub

End Class