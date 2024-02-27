Public Class Home
    Inherits System.Web.UI.Page

    Dim utils As Utils

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            utils = New Utils
        End If
    End Sub

    Private Sub Home_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete
        Dim clientName As String = utils.getClientName
        If clientName.Trim.ToUpper.Equals("PBP021") Then
            'Response.Redirect("Show.aspx")
        End If
    End Sub

End Class