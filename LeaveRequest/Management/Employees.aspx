<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPaages/Management.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="LeaveRequest.Management.Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" SortExpression="EmployeeID" />
        <asp:BoundField DataField="EmployeeTypeID" HeaderText="EmployeeTypeID" SortExpression="EmployeeTypeID" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="Suffix" HeaderText="Suffix" SortExpression="Suffix" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
        <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="StateProvince" HeaderText="StateProvince" SortExpression="StateProvince" />
        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        <asp:BoundField DataField="AnnualLeaveAccrued" HeaderText="AnnualLeaveAccrued" SortExpression="AnnualLeaveAccrued" />
        <asp:BoundField DataField="AnnualLeaveUsed" HeaderText="AnnualLeaveUsed" SortExpression="AnnualLeaveUsed" />
        <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
        <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
        <asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy" />
        <asp:BoundField DataField="UpdateDate" HeaderText="UpdateDate" SortExpression="UpdateDate" />
    </Columns>
</asp:GridView>
    <h3>Add a new Employee</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
            <asp:BoundField DataField="EmployeeTypeID" HeaderText="EmployeeTypeID" SortExpression="EmployeeTypeID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Suffix" HeaderText="Suffix" SortExpression="Suffix" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
            <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="StateProvince" HeaderText="StateProvince" SortExpression="StateProvince" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="AnnualLeaveAccrued" HeaderText="AnnualLeaveAccrued" SortExpression="AnnualLeaveAccrued" />
            <asp:BoundField DataField="AnnualLeaveUsed" HeaderText="AnnualLeaveUsed" SortExpression="AnnualLeaveUsed" />
            <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
            <asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy" />
            <asp:BoundField DataField="UpdateDate" HeaderText="UpdateDate" SortExpression="UpdateDate" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WinnerOfficeConnectionString1 %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmployeeID] = @EmployeeID" InsertCommand="INSERT INTO [Employee] ([EmployeeTypeID], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [DOB], [AddressLine1], [AddressLine2], [City], [StateProvince], [PostalCode], [Country], [EmailAddress], [PhoneNumber], [AnnualLeaveAccrued], [AnnualLeaveUsed], [CreatedBy], [CreateDate], [UpdatedBy], [UpdateDate]) VALUES (@EmployeeTypeID, @Title, @FirstName, @MiddleName, @LastName, @Suffix, @DOB, @AddressLine1, @AddressLine2, @City, @StateProvince, @PostalCode, @Country, @EmailAddress, @PhoneNumber, @AnnualLeaveAccrued, @AnnualLeaveUsed, @CreatedBy, @CreateDate, @UpdatedBy, @UpdateDate)" ProviderName="<%$ ConnectionStrings:WinnerOfficeConnectionString1.ProviderName %>" SelectCommand="SELECT [EmployeeID], [EmployeeTypeID], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [DOB], [AddressLine1], [AddressLine2], [City], [StateProvince], [PostalCode], [Country], [SpatialLocation], [EmailAddress], [PhoneNumber], [AnnualLeaveAccrued], [AnnualLeaveUsed], [CreatedBy], [CreateDate], [UpdatedBy], [UpdateDate] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [EmployeeTypeID] = @EmployeeTypeID, [Title] = @Title, [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Suffix] = @Suffix, [DOB] = @DOB, [AddressLine1] = @AddressLine1, [AddressLine2] = @AddressLine2, [City] = @City, [StateProvince] = @StateProvince, [PostalCode] = @PostalCode, [Country] = @Country, [EmailAddress] = @EmailAddress, [PhoneNumber] = @PhoneNumber, [AnnualLeaveAccrued] = @AnnualLeaveAccrued, [AnnualLeaveUsed] = @AnnualLeaveUsed, [CreatedBy] = @CreatedBy, [CreateDate] = @CreateDate, [UpdatedBy] = @UpdatedBy, [UpdateDate] = @UpdateDate WHERE [EmployeeID] = @EmployeeID">
    <DeleteParameters>
        <asp:Parameter Name="EmployeeID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="EmployeeTypeID" Type="Int32" />
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="MiddleName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="Suffix" Type="String" />
        <asp:Parameter DbType="Date" Name="DOB" />
        <asp:Parameter Name="AddressLine1" Type="String" />
        <asp:Parameter Name="AddressLine2" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="StateProvince" Type="String" />
        <asp:Parameter Name="PostalCode" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="PhoneNumber" Type="String" />
        <asp:Parameter Name="AnnualLeaveAccrued" Type="Int32" />
        <asp:Parameter Name="AnnualLeaveUsed" Type="Int32" />
        <asp:Parameter Name="CreatedBy" Type="Int32" />
        <asp:Parameter Name="CreateDate" Type="DateTime" />
        <asp:Parameter Name="UpdatedBy" Type="Int32" />
        <asp:Parameter Name="UpdateDate" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="EmployeeTypeID" Type="Int32" />
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="MiddleName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="Suffix" Type="String" />
        <asp:Parameter DbType="Date" Name="DOB" />
        <asp:Parameter Name="AddressLine1" Type="String" />
        <asp:Parameter Name="AddressLine2" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="StateProvince" Type="String" />
        <asp:Parameter Name="PostalCode" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="PhoneNumber" Type="String" />
        <asp:Parameter Name="AnnualLeaveAccrued" Type="Int32" />
        <asp:Parameter Name="AnnualLeaveUsed" Type="Int32" />
        <asp:Parameter Name="CreatedBy" Type="Int32" />
        <asp:Parameter Name="CreateDate" Type="DateTime" />
        <asp:Parameter Name="UpdatedBy" Type="Int32" />
        <asp:Parameter Name="UpdateDate" Type="DateTime" />
        <asp:Parameter Name="EmployeeID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
