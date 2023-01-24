<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function OnButtonClick(s, e) {
            ASPxPopupControl1.Show();
        }
        function OnSelectionChanged(s, e) {
            grid.GetSelectedFieldValues('CategoryName', OnSuccess);
        }
        function OnSuccess(v) {
            ASPxButtonEdit1.SetValue(v);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxButtonEdit ID="ASPxButtonEdit1" runat="server" Width="426px" ReadOnly="True">
                <Buttons>
                    <dx:EditButton>
                    </dx:EditButton>
                </Buttons>
                <ClientSideEvents ButtonClick="OnButtonClick" />
            </dx:ASPxButtonEdit>
            <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" PopupElementID="ASPxButtonEdit1"
                PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" ShowCloseButton="False"
                ShowHeader="False" Height="0px" Width="0px">
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server">
                        <dx:ASPxGridView runat="server" ClientInstanceName="grid" KeyFieldName="CategoryID"
                            AutoGenerateColumns="False" DataSourceID="AccessDataSource1" Width="428px" ID="ASPxGridView1">
                            <ClientSideEvents SelectionChanged="OnSelectionChanged" />
                            <Columns>
                                <dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0">
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
                                    <EditFormSettings Visible="False">
                                    </EditFormSettings>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsPager PageSize="20">
                            </SettingsPager>
                            <Settings ShowVerticalScrollBar="True" VerticalScrollableHeight="150" />
                        </dx:ASPxGridView>
                    </dx:PopupControlContentControl>
                </ContentCollection>
                <ContentStyle>
                    <Paddings Padding="0px">
                    </Paddings>
                </ContentStyle>
                <Border BorderStyle="None">
                </Border>
            </dx:ASPxPopupControl>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
                SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]">
            </asp:AccessDataSource>
        </div>
    </form>
</body>
</html>
