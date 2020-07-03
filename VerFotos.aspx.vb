Public Class VerFotos
    Inherits System.Web.UI.Page

    Dim objUSU As New Usuarios
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Session("valor") Is Nothing Then
            Response.Redirect("Identificarse.aspx")
        End If


    End Sub

End Class