Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data

Public Class Usuarios

    Dim CONECTOR As New SqlConnection(ConfigurationManager.ConnectionStrings("CADENA").ConnectionString)
    Dim COMANDO As New SqlCommand
    Dim SQL As String = ""


    Public Property usuario() As Long
    Public Property email() As String
    Public Property clave() As String
    Public Property sexo() As Char
    Public Property apodo() As String
    Public Property foto() As String


    Public Function ValidarUsuario(ByVal EMAIL As String, ByVal PALABRA As String) As Boolean
        Dim VALOR As Boolean = False
        SQL = "SELECT * FROM Usuarios WHERE email=@email AND palabra=@palabra"
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
                sexo = DR("sexo")
                usuario = DR("usuario")
                apodo = DR("apodo")
                VALOR = True
            End If
        End If

        CONECTOR.Close()
        Return VALOR
    End Function

    Public Sub BuscarF()

        SQL = "SELECT foto, apodo FROM Usuarios WHERE sexo = 'F'"
        CONECTOR.Open()
        COMANDO.Connection = CONECTOR
        COMANDO.CommandType = CommandType.Text
        COMANDO.CommandText = SQL
        COMANDO.Parameters.Clear()
        Dim DR As SqlDataReader = COMANDO.ExecuteReader()
        If DR.HasRows = True Then
            DR.Read()

            foto = DR("foto")
            apodo = DR("apodo")

        End If

        CONECTOR.Close()

    End Sub

    Public Sub BuscarM()

        SQL = "SELECT apodo, foto FROM Usuarios WHERE sexo = 'M'"
        CONECTOR.Open()
        COMANDO.Connection = CONECTOR
        COMANDO.CommandType = CommandType.Text
        COMANDO.CommandText = SQL
        COMANDO.Parameters.Clear()
        Dim DR As SqlDataReader = COMANDO.ExecuteReader()
        If DR.HasRows = True Then
            DR.Read()

            foto = DR("foto")
            apodo = DR("apodo")

        End If

        CONECTOR.Close()

    End Sub



End Class
