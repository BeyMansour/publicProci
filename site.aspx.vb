Imports System.Data.SqlClient
Imports System.Windows.Forms

Public Class site
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As New SqlConnection("Data Source=DESKTOP-809RTMB\SQLSERVERDEV19;Initial Catalog=MYAPP;User ID=app;Password=Baka1111")
        conn.Open()
        listEnregistrement(conn)
        conn.Close()
    End Sub

    Protected Sub ButtonInsert_Click(sender As Object, e As EventArgs) Handles ButtonInsert.Click
        Dim conn As New SqlConnection("Data Source=DESKTOP-809RTMB\SQLSERVERDEV19;Initial Catalog=MYAPP;User ID=app;Password=Baka1111")

        Dim id_prod As Integer = Convert.ToInt32(TextBox_Id.Text)
        Dim nom_prod As String = TextBoxNom.Text
        Dim q_ As Integer = Convert.ToInt32(TextBoxQ.Text)
        conn.Open()
        Dim comm As New SqlCommand("INSERT INTO dbo.PRODUIT (id_produit, nom_produit, stock) VALUES(" & id_prod & ",'" & nom_prod & "'," & q_ & ")", conn)
        comm.ExecuteNonQuery()
        'MessageBox.Show("Insertion terminé", "", System.Windows.Forms.MessageBoxButtons.YesNo, MessageBoxOptions.ServiceNotification)
        listEnregistrement(conn)
        conn.Close()
    End Sub

    Private Sub listEnregistrement(c As SqlConnection)
        Dim comm As New SqlCommand("SELECT * FROM dbo.PRODUIT", c)
        Dim sqlAd As New SqlDataAdapter(comm)
        Dim dt As New DataTable()
        sqlAd.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub

End Class