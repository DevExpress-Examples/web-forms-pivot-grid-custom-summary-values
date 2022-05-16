Imports System
Imports System.Data
Imports DevExpress.Web.ASPxPivotGrid
Imports DevExpress.XtraPivotGrid

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        ASPxPivotGrid1.DataSource = GetData()
    End Sub

    Private Function GetData() As DataTable
        Dim dt As New DataTable()
        Dim rnd As New Random()
        dt.Columns.Add("RowGroup", GetType(String))
        dt.Columns.Add("Row", GetType(String))
        dt.Columns.Add("ColumnGroup", GetType(String))
        dt.Columns.Add("Column", GetType(String))
        dt.Columns.Add("Data", GetType(Integer))
        For rowGroup As Integer = 1 To 4
            For row As Integer = 1 To 4
                For columnGroup As Integer = 1 To 4
                    For column As Integer = 1 To 4
                        dt.Rows.Add("Row Group" & rowGroup, "Row" & row, "Column Group" & columnGroup, "Column" & column, rnd.Next(100))
                    Next column
                Next columnGroup
            Next row
        Next rowGroup
        Return dt
    End Function
End Class
