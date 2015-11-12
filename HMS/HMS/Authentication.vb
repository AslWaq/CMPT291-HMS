Imports System.Security.Cryptography
Imports System.Text
Imports System.Data.SqlClient


Module Authentication
    Private UserID As Integer
    Private Admin As Boolean

    Public Function getID()
        Return UserID
    End Function

    Public Function isAdmin()
        Return Admin
    End Function

    Public Function attemptAuthentication(id As Integer, password As String) As Boolean
        'Note: For the sake of the assignment, authentication is really simple and is not secure'
        'A proper implementation would have have potentially a salted hash'
        Using md5Obj As MD5 = MD5.Create()
            Dim con As New DatabaseConnection
            Dim hash As String = md5Obj.ComputeHash(Encoding.UTF8.GetBytes(password)).ToString()
            Dim reader As SqlDataReader = con.runQuery("SELECT staff_id, admin FROM Staff WHERE Staff.staff_id=" & id & " And Staff.password = " & hash)
            Dim match As Boolean = reader.HasRows
            reader.Close()
            If (match) Then
                UserID = reader.GetInt16(0)
                Admin = reader.GetBoolean(1)
            End If
            Return match
        End Using
    End Function

    Public Sub unauthenticate()
        UserID = 0
    End Sub

End Module
