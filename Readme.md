<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577729/22.1.2%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2592)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* **[Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))**
<!-- default file list end -->
# How to provide custom summary values for Total, Grand Total and ordinary cells
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2592/)**
<!-- run online end -->


<p>This example demonstrates how to determine the value type when you calculate custom summary values. <br>1. Set the data field's <a href="https://documentation.devexpress.com/CoreLibraries/DevExpress.XtraPivotGrid.PivotGridFieldBase.SummaryType.property">SummaryType</a> property to <em>Custom</em> to perform calculations manually, by handling the <a href="http://documentation.devexpress.com/#WindowsForms/DevExpressXtraPivotGridPivotGridControl_CustomSummarytopic"><u>CustomSummary</u></a> event. <br>2. Use the <a href="https://documentation.devexpress.com/#CoreLibraries/DevExpressXtraPivotGridDataPivotGridCustomSummaryEventArgsBase~T~_ColumnFieldtopic"><u>PivotGridCustomSummaryEventArgs.ColumnField</u></a> and <a href="https://documentation.devexpress.com/#CoreLibraries/DevExpressXtraPivotGridDataPivotGridCustomSummaryEventArgsBase~T~_RowFieldtopic"><u>PivotGridCustomSummaryEventArgs.RowField</u></a> properties to determine the kind of a processed cell. You can use the following rules to determine that a cell is being processed:</p>
<p>    a. If <strong>ColumnField</strong> or <strong>RowField</strong> is <em>null, </em>it means that this is a <a href="https://documentation.devexpress.com/AspNet/3595/ASP-NET-WebForms-Controls/Pivot-Grid/UI-Elements/Grand-Totals">Grand Total</a> cell;<br>    b. If both ColumnField and RowField are last fields in a corresponding area, this means that this is an ordinary <a href="https://documentation.devexpress.com/AspNet/3590/ASP-NET-WebForms-Controls/Pivot-Grid/UI-Elements/Cell">cell</a>.<br>    c. In other cases, this is a <a href="https://documentation.devexpress.com/AspNet/3592/ASP-NET-WebForms-Controls/Pivot-Grid/UI-Elements/Totals">Total</a> cell.<br><br><strong>See Also</strong><br><a href="https://www.devexpress.com/Support/Center/p/E1877">E1877: How to Implement Custom Summary</a> <br><a href="https://www.devexpress.com/Support/Center/p/T158425">T158425: How to calculate Total cell values based on the low level Cell summary values</a><br><br><strong>Example versions for other platforms:</strong><br><a href="https://www.devexpress.com/Support/Center/p/T555679">T555679: How to provide custom summary values for Total, Grand Total and ordinary cells for WinForms PivotGridControl</a><br><a href="https://www.devexpress.com/Support/Center/p/T555636">T555636: How to provide custom summary values for Total, Grand Total and ordinary cells for WPF PivotGridControl</a></p>

<br/>


