<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v22.1, Version=22.1.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dxwpg" %>

<%@ Register assembly="DevExpress.Web.v22.1, Version=22.1.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxPivotGrid Custom Summary</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwpg:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" Theme="Metropolis" Width="800px" Height="500px" 
            OptionsView-VerticalScrollBarMode="Auto" OptionsView-VerticalScrollingMode="Standard" OptionsPager-Visible="False" 
            ClientIDMode="AutoID" IsMaterialDesign="False">
            <Fields>
                <dxwpg:PivotGridField ID="fieldRowGroup" Area="RowArea" AreaIndex="0">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="RowGroup" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldData" AreaIndex="0" Area="DataArea">
                    <DataBindingSerializable>
                        <dxwpg:ExpressionDataBinding Expression="iif(IsTotal([fieldColumnGroup]),'Grand Total',
                               IsTotal([fieldRowGroup]),'Grand Total',IsTotal([fieldColumn]),'Total',IsTotal([fieldRow]),'Total',Sum([Data]))" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldRow" Area="RowArea" AreaIndex="1">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="Row" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldColumnGroup" Area="ColumnArea" AreaIndex="0" >
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="ColumnGroup" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldColumn" Area="ColumnArea" AreaIndex="1">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="Column" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
            </Fields>

<OptionsView VerticalScrollBarMode="Auto"></OptionsView>

<OptionsPager Visible="False"></OptionsPager>

<OptionsData DataProcessingEngine="Optimized"></OptionsData>
        </dxwpg:ASPxPivotGrid>
    </div>
    </form>
</body>
</html>
