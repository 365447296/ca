﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/_Layouts/CA/Application.Master"
    CodeBehind="DisplayForm.aspx.cs" Inherits="CA.WorkFlow.UI._Layouts.CA.WorkFlows.SupplierReticketing.DisplayForm" %>

<%@ Register Assembly="CA.WorkFlow.UI" Namespace="CA.WorkFlow.UI" TagPrefix="cc1" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls"
    Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Assembly="QuickFlow.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ec1e0fe6e1745628"
    Namespace="QuickFlow.UI.ListForm" TagPrefix="QFL" %>
<%@ Register Assembly="QuickFlow.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ec1e0fe6e1745628"
    Namespace="QuickFlow.UI.Controls" TagPrefix="QFC" %>
<%@ Register Src="DataForm.ascx" TagName="DataForm" TagPrefix="uc1" %>
<%@ Assembly Name="QuickFlow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ec1e0fe6e1745628" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWorkFlowName"
    runat="server">
    Supplier Reticketing Request - 供应商重贴标签申请
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <br />
    <QFL:ListFormControl ID="ListFormControl1" runat="server" FormMode="Display">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="workflower_bj">
            <tr>
                <td>
                    <div class="workflow_table_button" style="padding-bottom: 10px">
                        <input type="button" value="Cancel" onclick="location.href = '/WorkFlowCenter/default.aspx'" />
                    </div>
                    <table width="100%" border="0" align="left" cellpadding="0" cellspacing="1" class="workflower_table">
                        <tr>
                            <td>
                                <uc1:DataForm ID="DataForm1" runat="server" ControlMode="Display" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <cc1:TaskTraceList ID="TaskTraceList1" runat="server">
                                </cc1:TaskTraceList>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table width="596" border="0" align="center" cellpadding="0" cellspacing="0" class="note">
            <tr>
                <th valign="top" class="top">
                    &nbsp;
                </th>
            </tr>
            <tr>
                <td valign="top">
                    <a href="/WorkFlowCenter/FlowCharts/SupplierReticketing.doc" style="cursor: hand;
                        color: Blue; font-size: 14px">Click here to view the flowchart of the workflow</a>
                </td>
            </tr>
            <tr>
                <th valign="top" class="foot">
                    &nbsp;
                </th>
            </tr>
        </table>
        <SharePoint:FormDigest ID="FormDigest1" runat="server">
        </SharePoint:FormDigest>
    </QFL:ListFormControl>
</asp:Content>
