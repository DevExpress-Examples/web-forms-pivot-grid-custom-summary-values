<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577729/22.1.2%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2592)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# Pivot Grid for Web Forms - How to Specify Custom Summary Values for Total, Grand Total, and Ordinary Cells

This example demonstrates how to determine the value type when you calculate custom summary values.
<!-- default file list -->
## Files to Look at 

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->

## Example Overview

Follow the steps below to create a custom summary.
1. Create an [ExpressionDataBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.ExpressionDataBinding?p=netframework) object.
2. Pass the following expression in its constructor as a parameter:

    ```
    iif(IsTotal([fieldColumnGroup]),'Grand Total',IsTotal([fieldRowGroup]),'Grand Total',IsTotal([fieldColumn]),'Total',IsTotal([fieldRow]),'Total',Sum([Data]))
    ``` 
3. Assign the ExpressionDataBinding instance to the _fieldData_ field's [DataBinding](https://docs.devexpress.com/CoreLibraries/DevExpress.XtraPivotGrid.PivotGridFieldBase.DataBinding) property.

## Documentation

- [Pivot Grid Expression Syntax](https://docs.devexpress.com/CoreLibraries/120512/devexpress-pivot-grid-core-library/advanced-analytics/pivot-grid-expression-syntax#functions)
- [Custom Summaries](https://docs.devexpress.com/AspNet/7301/components/pivot-grid/data-shaping/aggregation/summaries/custom-summaries)

## More Examples

[Pivot Grid for Web Forms - How to Aggregate Data by the Field's First Value](https://github.com/DevExpress-Examples/aspnet-pivot-grid-custom-aggregates)

