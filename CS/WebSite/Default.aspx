<%-- BeginRegion Page setup --%>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Editors_ExtLookup" %>

<%@ Register Assembly="DevExpress.Web.v8.1, Version=8.1.9.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dxpc" %>
<%@ Register Assembly="System.Web, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="System.Web.UI" TagPrefix="cc1" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1, Version=8.1.9.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1, Version=8.1.9.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Implementing a CheckedComboBox using the ASPxGridView, ASPxButtonEdit and ASPxPopupControl</title>
</head>
<body>
    <form id="form1" runat="server">
        <dxe:ASPxButtonEdit ID="ASPxButtonEdit1" runat="server" Width="426px" ReadOnly="True">
            <Buttons>
                <dxe:EditButton>
                </dxe:EditButton>
            </Buttons>
            <ClientSideEvents ButtonClick="function(s, e) {
	ASPxPopupControl1.Show();
}" />
        </dxe:ASPxButtonEdit>
        <dxpc:ASPxPopupControl ID="ASPxPopupControl1" runat="server" PopupElementID="ASPxButtonEdit1"
            PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" ShowCloseButton="False"
            ShowHeader="False" Height="0px" Width="0px">
            <ContentCollection>
                <dxpc:PopupControlContentControl runat="server">
                    <dxwgv:ASPxGridView runat="server" ClientInstanceName="grid" KeyFieldName="CategoryID"
                        AutoGenerateColumns="False" DataSourceID="AccessDataSource1" Width="428px" ID="ASPxGridView1">
                        <ClientSideEvents SelectionChanged="function(s, e) {
	grid.GetSelectedFieldValues('CategoryName', function(v){ASPxButtonEdit1.SetValue(v);});
}"></ClientSideEvents>
                        <Columns>
                            <dxwgv:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0">
                            </dxwgv:GridViewCommandColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
                                <EditFormSettings Visible="False"></EditFormSettings>
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
                            </dxwgv:GridViewDataTextColumn>
                        </Columns>
                        <SettingsPager PageSize="20">
                        </SettingsPager>
                        <Settings ShowVerticalScrollBar="True" VerticalScrollableHeight="150" />
                    </dxwgv:ASPxGridView>
                </dxpc:PopupControlContentControl>
            </ContentCollection>
            <ContentStyle>
                <Paddings Padding="0px"></Paddings>
            </ContentStyle>
            <Border BorderStyle="None"></Border>
        </dxpc:ASPxPopupControl>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:AccessDataSource>
    </form>
</body>
</html>
