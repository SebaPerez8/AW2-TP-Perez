Public Class VerFotos
    Inherits System.Web.UI.Page

    Dim objUSU As New Usuarios

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Session("valor") Is Nothing Then
            Response.Redirect("Identificarse.aspx")
        End If

        If Session("sexo") = "M" Then
            objUSU.BuscarF()
            lblApodo.Text = objUSU.apodo
            imgFotos.ImageUrl = "~/FOTOS/" & objUSU.foto
        Else
            objUSU.BuscarM()
            lblApodo.Text = objUSU.apodo
            imgFotos.ImageUrl = "~/FOTOS/" & objUSU.foto
        End If

    End Sub

    Protected Sub imgEnojado_Click(sender As Object, e As ImageClickEventArgs) Handles imgEnojado.Click




    End Sub
End Class