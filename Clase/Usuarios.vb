Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data

Public Class Usuarios

    Dim CONECTOR As New SqlConnection(ConfigurationManager.ConnectionStrings("CADENA").ConnectionString)
    Dim COMANDO As New SqlCommand
    Dim SQL As String = ""

    Public Function ValidarUsuario(ByVal EMAIL As String, ByVal PALABRA As String) As Boolean
        Dim VALOR As Boolean = False
        SQL = "SELECT email, palabra FROM Usuarios WHERE email=@email AND palabra=@palabra"
        CONECTOR.Open()
        COMANDO.Connection = CONECTOR
        COMANDO.CommandType = CommandType.Text
        COMANDO.CommandText = SQL
        COMANDO.Parameters.Clear()
        COMANDO.Parameters.AddWithValue("@email", EMAIL)
        COMANDO.Parameters.AddWithValue("@palabra", PALABRA)
        Dim DR As SqlDataReader = COMANDO.ExecuteReader()
        If DR.HasRows = True Then
            DR.Read()
            If DR("email") = EMAIL And DR("palabra") = PALABRA Then
                VALOR = True
            End If
        End If

        CONECTOR.Close()
        Return VALOR
    End Function






End Class
