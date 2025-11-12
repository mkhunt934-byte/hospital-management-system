<%@ Page Title="Add New Patient" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="hospitalll.AddPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-container {
            background-color: #ffffff;
            padding: 40px;
            margin: 40px auto;
            border-radius: 12px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.1);
            max-width: 700px;
        }

        h1 {
            text-align: center;
            color: #0078d7;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: 600;
            color: #333;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin-top: 5px;
        }

        .btn-save, .btn-cancel, .btn-back {
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            color: white;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-save {
            background-color: #28a745;
        }

        .btn-save:hover {
            background-color: #218838;
        }

        .btn-cancel {
            background-color: #dc3545;
            margin-left: 10px;
        }

        .btn-cancel:hover {
            background-color: #c82333;
        }

        .btn-back {
            background-color: #007bff;
            margin-left: 10px;
        }

        .btn-back:hover {
            background-color: #0069d9;
        }

        .message {
            text-align: center;
            font-weight: 600;
            margin-top: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="form-container">
        <h1>Add New Patient</h1>

        <div class="form-group">
            <label>Full Name</label>
            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter full name"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Age</label>
            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" TextMode="Number" placeholder="Enter age"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Gender</label>
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Contact</label>
            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" placeholder="Enter contact number"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Address</label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter address"></asp:TextBox>
        </div>

        <div style="text-align:center;">
            <asp:Button ID="btnSave" runat="server" CssClass="btn-save" Text="Save Patient" OnClick="btnSave_Click" />
            <asp:Button ID="btnCancel" runat="server" CssClass="btn-cancel" Text="Cancel" OnClick="btnCancel_Click" />
            <asp:Button ID="btnBack" runat="server" CssClass="btn-back" Text="Back" OnClick="btnBack_Click" />
        </div>

        <asp:Label ID="lblMessage" runat="server" CssClass="message" />
    </div>

</asp:Content>
