Imports System.Data.SqlClient

Public Class DatabaseConnection
    Private Connection As SqlConnection

    Public Function runQuery(query As String)
        Dim command As SqlCommand
        command = Connection.CreateCommand()
        command.CommandText = query

        Try
            Connection.Open()
        Catch ex As Exception
            MsgBox(ex.Message)
            Application.Exit()
        End Try

        Dim reader As SqlDataReader
        Try
            reader = command.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
            Application.Exit()
        End Try
        'Reader should be closed to by function' 
        Return reader
    End Function

    Sub New()
        Try
            Connection = New SqlConnection(ConnectionInfo.CONNECTION_STRING)
        Catch ex As Exception
            MsgBox(ex.Message)
            Application.Exit()
        End Try
    End Sub

    Sub Destroy()
        Connection.Close()
    End Sub
End Class
