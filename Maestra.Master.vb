Public Class Site1
    Inherits System.Web.UI.MasterPage


    Protected Sub lnkCerrarSesion_Click(sender As Object, e As EventArgs) Handles lnkCerrarSesion.Click

        Session("valor") = ""
        Response.Redirect("Identificarse.aspx")

    End Sub
End Class