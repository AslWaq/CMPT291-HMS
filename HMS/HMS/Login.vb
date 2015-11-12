Public Class Login
    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles btn_admin.Click
        Dim id As Integer = text_user.Text
        Dim password As String = text_pass.Text
        Dim success As Boolean = Authentication.attemptAuthentication(id, password)
        If (success) Then
            MsgBox("Login sucessful")
        Else
            MsgBox("Login failed")
        End If
    End Sub

    Private Sub Login_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Label2_Click(sender As Object, e As EventArgs) Handles Label2.Click

    End Sub
End Class
