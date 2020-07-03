Public Class Identificarse
    Inherits System.Web.UI.Page

    Dim objUSU As New Usuarios
    Protected Sub bIngresar_Click(sender As Object, e As EventArgs) Handles bIngresar.Click

        Dim VALOR As Boolean = objUSU.ValidarUsuario(txtEmail.Text, txtPalabra.Text)
        If VALOR = True Then
            Session("valor") = VALOR
            Response.Redirect("VerFotos.aspx")

        End If

    End Sub
End Class