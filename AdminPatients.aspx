<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminPatients.aspx.cs" Inherits="hospitalll.AdminPatients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .patients-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            margin: 20px;
        }

        .patients-header h1 {
            color: #0078d7;
            margin-bottom: 5px;
        }

        .btn-add {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 6px;
            cursor: pointer;
            margin-bottom: 20px;
            transition: 0.3s;
        }

        .btn-add:hover {
            background-color: #218838;
        }

        .patients-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .patients-table th {
            background-color: #0078d7;
            color: white;
            text-align: left;
            padding: 10px;
        }

        .patients-table td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .patients-table tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="patients-container">
        <div class="patients-header">
            <h1>Patient Management</h1>
            <p>View, Add, and Manage Patient Information</p>
        </div>

        <asp:Button ID="btnAddNew" runat="server" CssClass="btn-add" Text="+ Add New Patient" OnClick="btnAddNew_Click" />

        <table class="patients-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Full Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Contact</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptPatients" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("PatientID") %></td>
                            <td><%# Eval("FullName") %></td>
                            <td><%# Eval("Age") %></td>
                            <td><%# Eval("Gender") %></td>
                            <td><%# Eval("Contact") %></td>
                            <td><%# Eval("Address") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
