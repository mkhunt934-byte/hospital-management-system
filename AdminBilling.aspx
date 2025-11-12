<%@ Page Title="Admin Billing" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeFile="AdminBilling.aspx.cs" Inherits="hospitalll.AdminBilling" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body { background:#f5f7fa; font-family:'Segoe UI', Tahoma; }
        .form-container { background:#fff; padding:20px; margin:20px; border-radius:10px; box-shadow:0 4px 10px rgba(0,0,0,0.1); }
        .form-row { display:grid; grid-template-columns:1fr 1fr; gap:15px; }
        label { font-weight:600; display:block; margin-bottom:5px; }
        input, select { width:100%; padding:8px; border:1px solid #ccc; border-radius:5px; }
        .btn-primary { background:#3498db; color:white; border:none; padding:10px 15px; border-radius:5px; cursor:pointer; }
        .btn-primary:hover { background:#2980b9; }
        .msg { margin-top:10px; font-weight:600; }
        table { width:100%; border-collapse:collapse; margin-top:20px; }
        th, td { border:1px solid #ddd; padding:8px; }
        th { background:#f4f6f8; text-align:left; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>💰 Billing Management</h2>

        <asp:HiddenField ID="hfId" runat="server" />

        <div class="form-row">
            <div>
                <label>Patient Name</label>
                <asp:TextBox ID="txtPatientName" runat="server"></asp:TextBox>
            </div>
            <div>
                <label>Doctor Name</label>
                <asp:TextBox ID="txtDoctorName" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div>
                <label>Service Type</label>
                <asp:DropDownList ID="ddlServiceType" runat="server">
                    <asp:ListItem Text="-- Select Service --" Value=""></asp:ListItem>
                    <asp:ListItem Text="Consultation" Value="Consultation"></asp:ListItem>
                    <asp:ListItem Text="X-Ray" Value="X-Ray"></asp:ListItem>
                    <asp:ListItem Text="Lab Test" Value="Lab Test"></asp:ListItem>
                    <asp:ListItem Text="Surgery" Value="Surgery"></asp:ListItem>
                    <asp:ListItem Text="Medicine" Value="Medicine"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label>Payment Date</label>
                <asp:TextBox ID="txtPaymentDate" runat="server" TextMode="Date"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div>
                <label>Amount (₹)</label>
                <asp:TextBox ID="txtAmount" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <div>
                <label>Payment Method</label>
                <asp:DropDownList ID="ddlPaymentMethod" runat="server">
                    <asp:ListItem Text="-- Select Method --" Value=""></asp:ListItem>
                    <asp:ListItem Text="Cash" Value="Cash"></asp:ListItem>
                    <asp:ListItem Text="Credit Card" Value="Credit Card"></asp:ListItem>
                    <asp:ListItem Text="Debit Card" Value="Debit Card"></asp:ListItem>
                    <asp:ListItem Text="UPI" Value="UPI"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div>
            <label>Status</label>
            <asp:DropDownList ID="ddlStatus" runat="server">
                <asp:ListItem Text="-- Select Status --" Value=""></asp:ListItem>
                <asp:ListItem Text="Paid" Value="Paid"></asp:ListItem>
                <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <br />
        <asp:Button ID="btnSave" runat="server" Text="💾 Save Billing" CssClass="btn-primary" OnClick="btnSave_Click" />
        <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>

        <asp:GridView ID="gvBilling" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" 
            OnRowEditing="gvBilling_RowEditing" OnRowCancelingEdit="gvBilling_RowCancelingEdit" 
            OnRowUpdating="gvBilling_RowUpdating" OnRowDeleting="gvBilling_RowDeleting">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="PatientName" HeaderText="Patient" />
                <asp:BoundField DataField="DoctorName" HeaderText="Doctor" />
                <asp:BoundField DataField="ServiceType" HeaderText="Service" />
                <asp:BoundField DataField="PaymentDate" HeaderText="Date" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" DataFormatString="{0:N2}" />
                <asp:BoundField DataField="PaymentMethod" HeaderText="Method" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
