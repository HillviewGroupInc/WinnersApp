<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPaages/Management.Master" AutoEventWireup="true" CodeBehind="EmployeeType.aspx.cs" Inherits="LeaveRequest.Management.EmployeeType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h3>Add a New Type of Employee</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="EmployeeTypeID" DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="EmployeeTypeID" HeaderText="EmployeeTypeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeTypeID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
                <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
                <asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy" />
                <asp:BoundField DataField="UpdateDate" HeaderText="UpdateDate" SortExpression="UpdateDate" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    <br /><br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EmployeeTypeID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="EmployeeTypeID" HeaderText="EmployeeTypeID" ReadOnly="True" SortExpression="EmployeeTypeID" InsertVisible="False" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
            <asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy" />
            <asp:BoundField DataField="UpdateDate" HeaderText="UpdateDate" SortExpression="UpdateDate" />
        </Columns>
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WinnerOfficeConnectionString1 %>" DeleteCommand="DELETE FROM [EmployeeType] WHERE [EmployeeTypeID] = @EmployeeTypeID" InsertCommand="INSERT INTO [EmployeeType] ([Name], [Description], [CreatedBy], [CreateDate], [UpdatedBy], [UpdateDate]) VALUES (@Name, @Description, @CreatedBy, @CreateDate, @UpdatedBy, @UpdateDate)" ProviderName="<%$ ConnectionStrings:WinnerOfficeConnectionString1.ProviderName %>" SelectCommand="SELECT [EmployeeTypeID], [Name], [Description], [CreatedBy], [CreateDate], [UpdatedBy], [UpdateDate] FROM [EmployeeType]" UpdateCommand="UPDATE [EmployeeType] SET [Name] = @Name, [Description] = @Description, [CreatedBy] = @CreatedBy, [CreateDate] = @CreateDate, [UpdatedBy] = @UpdatedBy, [UpdateDate] = @UpdateDate WHERE [EmployeeTypeID] = @EmployeeTypeID">
            <DeleteParameters>
                <asp:Parameter Name="EmployeeTypeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="CreatedBy" Type="Int32" />
                <asp:Parameter Name="CreateDate" Type="DateTime" />
                <asp:Parameter Name="UpdatedBy" Type="Int32" />
                <asp:Parameter Name="UpdateDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="CreatedBy" Type="Int32" />
                <asp:Parameter Name="CreateDate" Type="DateTime" />
                <asp:Parameter Name="UpdatedBy" Type="Int32" />
                <asp:Parameter Name="UpdateDate" Type="DateTime" />
                <asp:Parameter Name="EmployeeTypeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h3>
</asp:Content>
