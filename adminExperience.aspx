﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminExperience.aspx.cs" Inherits="CVBlog.adminExperience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 
   
    <form id="form2" runat="server">
 
        <table class="table table-bordered" >
            <tr>
                <th>ID</th>
                <th>TOPIC</th>
                <th>SUBTITLE</th>
                <th>DESCRIPTION</th>
                <th>DATE</th>
                <th>UPDATE/DELETE</th>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th style=" word-break: normal;"><%# Eval("ID") %></th>
                            <td style=" word-break: normal;"><%# Eval("TOPIC") %></td>
                            <td style=" word-break: normal;"><%# Eval("SUBTITLE") %></td>
                            <td style=" word-break: normal;"><%# Eval("DESCRIPTION") %></td>
                            <td style=" word-break: normal;"><%# Eval("DATE") %></td>
                            <td style="white-space: nowrap;">
                                <asp:HyperLink ID="btnDelete" NavigateUrl='<%# "adminExperienceDelete.aspx?ID=" + Eval("ID") %>' runat="server" CssClass="btn btn-danger ">Delete</asp:HyperLink>
                                <asp:HyperLink ID="btnUpdate" NavigateUrl='<%# "adminExperienceUpdate.aspx?ID=" + Eval("ID") %>' runat="server" CssClass="btn btn-info">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <asp:Button ID="btnAdd" runat="server" Text="+ ADD" CssClass="btn btn-success" OnClick="btnAdd_Click" />
    </form>
</asp:Content>
