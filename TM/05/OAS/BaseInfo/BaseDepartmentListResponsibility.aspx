﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BaseDepartmentListResponsibility.aspx.cs" Inherits="BaseInfo_BaseDepartmentListResponsibility" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" border="0" cellpadding="0" cellspacing="0" class="css" style="width: 700px;
            height: 1px">
            <tr>
                <td align="center" class="csstitle" colspan="3" style="height: 15px">
                    －＝部门职责＝－</td>
            </tr>
            <tr>
                <td align="left" colspan="3" style="height: 76px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                        CellPadding="4" DataKeyNames="deptid" Font-Size="Small" GridLines="Horizontal"
                        OnPageIndexChanging="GridView1_PageIndexChanging"
                        Width="700px">
                        <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                            NextPageText="下一页" PreviousPageText="上一页" />
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="部门名称">
                                <HeaderStyle Width="80px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="memo" HeaderText="部门描述">
                                <HeaderStyle Width="200px" />
                            </asp:BoundField>
                        </Columns>
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
