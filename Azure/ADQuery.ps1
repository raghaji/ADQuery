#region xaml GUI Form
#Adding PresentationFramework for Run XAML Variable.
Add-Type -AssemblyName PresentationFramework
#Write XAML code in variable and Declear type as a xml.
[xml]$xaml= @"
<Window
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        x:Name="Window"
        Title="AD Query Tool" Height="700" Width="1024">
    <Grid>
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="10"/>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="Auto"/>
        </Grid.ColumnDefinitions>
        <Grid.RowDefinitions>
            <RowDefinition Height="10"/>
            <RowDefinition Height="Auto" />
            <RowDefinition Height="Auto"/>
        </Grid.RowDefinitions>
        <TabControl Grid.Column="1" Grid.RowSpan="2" Grid.Row="1" Grid.ColumnSpan="2" Margin="0,0,10,10" >
            <TabItem Header="User" Margin="0,0,-113,0">
                <Grid Background="#FFE5E5E5" MinHeight="560" MinWidth="981" >
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="10"/>
                        <ColumnDefinition Width="173"/>
                        <ColumnDefinition Width="181" />
                        <ColumnDefinition Width="151" />
                        <ColumnDefinition Width="83"/>
                        <ColumnDefinition Width="181"/>
                        <ColumnDefinition Width="151" />
                        <ColumnDefinition Width="10"/>
                    </Grid.ColumnDefinitions>
                    <Grid.RowDefinitions>
                        <RowDefinition Height="10"/>
                        <RowDefinition Height="27*"/>
                        <RowDefinition Height="Auto" MinHeight="10"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="29*"/>
                    </Grid.RowDefinitions>
                    <Label Content="User ID :" Grid.Column="1" Grid.Row="1" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtBUserID" Grid.Column="2" Grid.Row="1"/>
                    <Button x:Name="BtnUserID" Grid.Column="3" Grid.Row="1" Content="Get User Details" FontFamily="calibri" FontSize="14" FontWeight="Bold" Margin="2,2,2,2" />
                    <Label Content="User Name :" Grid.Column="4" Grid.Row="1" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtBUserName" Grid.Column="5" Grid.Row="1" />
                    <Button x:Name="BtnUserName" Grid.Column="6" Grid.Row="1" Content="Get User Details" FontFamily="calibri" FontSize="14" FontWeight="Bold" Margin="2,2,2,2"/>
                    <Label Content="User ID :" Grid.Column="1" Grid.Row="3" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtgetUserID" Text="" Grid.Column="2" Grid.Row="3" Background="White" IsReadOnly="True"/>
                    <Label Content="Display Name:" Grid.Column="1" Grid.Row="4" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtDName" Text="" Grid.Column="2" Grid.Row="4" Background="White" IsReadOnly="True"/>
                    <Label Content="First Name :" Grid.Column="1" Grid.Row="5" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtFName" Text="" Grid.Column="2" Grid.Row="5" Background="White" IsReadOnly="True"/>
                    <Label Content="Last Name: " Grid.Column="1" Grid.Row="6" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtLName" Text="" Grid.Column="2" Grid.Row="6" Background="White" IsReadOnly="True"/>
                    <Label Content="Distinguished Name:" Grid.Column="1" Grid.Row="7" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtDNName" Text="" Grid.Column="2" Grid.Row="7" Background="White" IsReadOnly="True"/>
                    <Label Content="Account Expiration Date:" Grid.Column="1" Grid.Row="8" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtAcExDate" Text="" Grid.Column="2" Grid.Row="8" Background="White" IsReadOnly="True"/>
                    <Label Content="account Created:" Grid.Column="1" Grid.Row="9" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtAcCreDate" Text=""  Grid.Column="2" Grid.Row="9" Background="White" IsReadOnly="True"/>
                    <Label Content="Email ID :" Grid.Column="1" Grid.Row="10" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtEmailID" Text="" Grid.Column="2" Grid.Row="10" Background="White" IsReadOnly="True"/>
                    <Label Content="HomeDirectory:" Grid.Column="1" Grid.Row="11" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtHD" Text="" Grid.Column="2" Grid.Row="11" Background="White" IsReadOnly="True"/>
                    <Label Content="Last Logon Date:" Grid.Column="1" Grid.Row="12" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtLLDate" Text="" Grid.Column="2" Grid.Row="12" Background="White" IsReadOnly="True"/>
                    <Label Content="Last Bad Password Attempt:" Grid.Column="1" Grid.Row="13" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtLBPA" Text="" Grid.Column="2" Grid.Row="13" Background="White" IsReadOnly="True"/>
                    <Label Content="Locked Out:" Grid.Column="1" Grid.Row="14" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtLO" Text="" Grid.Column="2" Grid.Row="14" Background="White" IsReadOnly="True"/>
                    <Label Content="Password Last Set:" Grid.Column="1" Grid.Row="15" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtPLS" Text="" Grid.Column="2" Grid.Row="15" Background="White" IsReadOnly="True"/>
                    <Label Content="Manager: " Grid.Column="1" Grid.Row="16" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtMngr" Text="" Grid.Column="2" Grid.Row="16" Background="White" IsReadOnly="True"/>
                    <Label Content="Managed Objects :" Grid.Column="1" Grid.Row="17" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtPCName" Text="" Grid.Column="1" Grid.Row="18" Grid.ColumnSpan="2" Grid.RowSpan="5" Background="White" IsReadOnly="True"/>
                    <Label Content="Primary Group:" Grid.Column="3" Grid.Row="3" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtPG" Text="" Grid.Column="4" Grid.Row="3" Background="White" Grid.ColumnSpan="3" IsReadOnly="True"/>
                    <Label Content="Member Of:" Grid.Column="3" Grid.Row="4" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtMBRO" Text="" Grid.Column="3" Grid.Row="5" Background="White" IsReadOnly="True" Grid.ColumnSpan="4" Grid.RowSpan="11"/>
                    <Label Content="Direct Reports:" Grid.Column="3" Grid.Row="16" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtDR" Text="" Grid.Column="3" Grid.Row="18" Grid.ColumnSpan="4" Grid.RowSpan="5" Background="White" IsReadOnly="True"/>
                </Grid>
            </TabItem>
            <TabItem Header="Computer" Margin="113,0,-238,0">
                <Grid Background="#FFE5E5E5" MinHeight="560" MinWidth="981">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="10"/>
                        <ColumnDefinition Width="164"/>
                        <ColumnDefinition Width="181" />
                        <ColumnDefinition Width="151" />
                        <ColumnDefinition Width="161"/>
                        <ColumnDefinition Width="261" />
                        <ColumnDefinition Width="10"/>
                    </Grid.ColumnDefinitions>
                    <Grid.RowDefinitions>
                        <RowDefinition Height="10"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="Auto" MinHeight="10"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="2*"/>
                    </Grid.RowDefinitions>
                    <Label Content="Computer Name :" Grid.Column="1" Grid.Row="1" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtComputerName" Grid.Column="2" Grid.ColumnSpan="3" Grid.Row="1"/>
                    <Button x:Name="BtnComputer" Grid.Column="5" Grid.Row="1" Content="Get Computer Details" FontFamily="calibri" FontSize="14" FontWeight="Bold" Margin="2,2,2,2" />
                    <Label Content="Computer Name :" Grid.Column="1" Grid.Row="3" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtCPRName"  Grid.Column="2" Grid.Row="3" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="FQDN" Grid.Column="1" Grid.Row="4" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtFQDN" Grid.Column="2" Grid.Row="4" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="IPv4 :" Grid.Column="1" Grid.Row="5" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name ="txtIPv4" Grid.Column="2" Grid.Row="5" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Managed By:" Grid.Column="1" Grid.Row="6" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtManagedby" Grid.Column="2" Grid.Row="6" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Operating System:" Grid.Column="1" Grid.Row="7" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtOS" Grid.Column="2" Grid.Row="7" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Created:" Grid.Column="1" Grid.Row="8" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtCrtd" Grid.Column="2" Grid.Row="8" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Sam Account Name:" Grid.Column="1" Grid.Row="9" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtSAN" Grid.Column="2" Grid.Row="9" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="OU:" Grid.Column="1" Grid.Row="10" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtOUC" Grid.Column="2" Grid.Row="10" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Serial No:" Grid.Column="1" Grid.Row="11" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtSerial" Grid.Column="2" Grid.Row="11" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Enabled:" Grid.Column="1" Grid.Row="12" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtEbld" Grid.Column="2" Grid.Row="12" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Last Logon Date:" Grid.Column="1" Grid.Row="13" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtLLD" Grid.Column="2" Grid.Row="13" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Operating System Version:" Grid.Column="1" Grid.Row="14" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtOSV" Grid.Column="2" Grid.Row="14" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Location: " Grid.Column="1" Grid.Row="15" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtLtion" Grid.Column="2" Grid.Row="15" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Certificates :" Grid.Column="16" Grid.Row="3" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtCert" Grid.Column="2" Grid.Row="16" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Description:" Grid.Column="1" Grid.Row="17" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtDescpn" Grid.Column="1" Grid.Row="18" Grid.ColumnSpan="2" Grid.RowSpan="3" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Primary Group:" Grid.Column="3" Grid.Row="3" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtPGC" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="3" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Member of :" Grid.Column="3" Grid.Row="4" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtMOC" Grid.Column="3" Grid.Row="5" Grid.ColumnSpan="3" Grid.RowSpan="16" Text="" Background="White" IsReadOnly="True"/>
                </Grid>
            </TabItem>
            <TabItem Header="Group" Margin="238,0,-364,0" >
                <Grid Background="#FFE5E5E5" MinHeight="560" MinWidth="981">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="10"/>
                        <ColumnDefinition Width="212"/>
                        <ColumnDefinition Width="181" />
                        <ColumnDefinition Width="151" />
                        <ColumnDefinition Width="151" />
                        <ColumnDefinition Width="251" />
                        <ColumnDefinition Width="10"/>
                    </Grid.ColumnDefinitions>
                    <Grid.RowDefinitions>
                        <RowDefinition Height="10"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="10" />
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                    </Grid.RowDefinitions>
                    <Label Content="Group Name :" Grid.Column="1" Grid.Row="1" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtGroupName" Grid.Column="2" Grid.ColumnSpan="3" Grid.Row="1"/>
                    <Button x:Name="BtnGroup" Grid.Column="5" Grid.Row="1" Content="Get Group Details" FontFamily="calibri" FontSize="14" FontWeight="Bold" Margin="2,2,2,2" />
                    <Label Content="Group Name :" Grid.Column="1" Grid.Row="3" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtGName" Grid.Column="2" Grid.Row="3" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Managed By:" Grid.Column="1" Grid.Row="4" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtGManBy" Grid.Column="2" Grid.Row="4" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Distinguished Name" Grid.Column="1" Grid.Row="5" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtGDN" Grid.Column="2" Grid.Row="5" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Group Scope:" Grid.Column="1" Grid.Row="6" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtGS" Grid.Column="2" Grid.Row="6" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Created Date" Grid.Column="1" Grid.Row="7" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtCD" Grid.Column="2" Grid.Row="7" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="ProtectedFromAccidentalDeletion:" Grid.Column="1" Grid.Row="8" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtPFAD" Grid.Column="2" Grid.Row="8" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="SamAccountName:" Grid.Column="1" Grid.Row="9" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtsaman" Grid.Column="2" Grid.Row="9" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Canonical Name:" Grid.Column="1" Grid.Row="10" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtgcn" Grid.Column="2" Grid.Row="10" Text="" Background="White" IsReadOnly="True"/>

                    <Label Content="Group Category:" Grid.Column="1" Grid.Row="11" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtgcat" Grid.Column="2" Grid.Row="11" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Description::" Grid.Column="1" Grid.Row="12" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtgd" Grid.Column="1" Grid.ColumnSpan="2" Grid.RowSpan="3" Grid.Row="13" Text="" Background="White" IsReadOnly="True"/>


                    <Label Content="Member List:" Grid.Column="1" Grid.Row="16" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtgml" Grid.Column="1" Grid.Row="17" Grid.ColumnSpan="2" Grid.RowSpan="3" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Member Of: " Grid.Column="3" Grid.Row="3" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtgmemby" Grid.Column="3" Grid.Row="4" Grid.ColumnSpan="3" Grid.RowSpan="16" Text="" Background="White" IsReadOnly="True"/>

                </Grid>
            </TabItem>
            <TabItem Header="Computer(WMIC)" RenderTransformOrigin="0,0" Margin="364,0,-490,0" >
                <Grid Background="#FFE5E5E5" MinHeight="560" MinWidth="981">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="10"/>
                        <ColumnDefinition Width="114"/>
                        <ColumnDefinition Width="181" />
                        <ColumnDefinition Width="151" />
                        <ColumnDefinition Width="161" />
                        <ColumnDefinition Width="261" />
                        <ColumnDefinition Width="10"/>
                    </Grid.ColumnDefinitions>
                    <Grid.RowDefinitions>
                        <RowDefinition Height="10"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="10" />
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                        <RowDefinition Height="27"/>
                    </Grid.RowDefinitions>
                    <Label Content="Computer Name :" Grid.Column="1" Grid.Row="1" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtComputerwmicName" Grid.Column="2" Grid.ColumnSpan="3" Grid.Row="1"/>
                    <Button x:Name="BtnComputerWmic" Grid.Column="5" Grid.Row="1" Content="Get Computer Details" FontFamily="calibri" FontSize="14" FontWeight="Bold" Margin="2,2,2,2" />
                    <Label Content="Computer Name :" Grid.Column="1" Grid.Row="3" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtwmicCN" Grid.Column="2" Grid.Row="3" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Manufacturer " Grid.Column="1" Grid.Row="4" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtWmicManu" Grid.Column="2" Grid.Row="4" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Current User:" Grid.Column="1" Grid.Row="5" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtWmiccu" Grid.Column="2" Grid.Row="5" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="UUID:" Grid.Column="1" Grid.Row="6" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtuuid" Grid.Column="2" Grid.Row="6" Text="" Background="White" IsReadOnly="True"/>
                    <Label Content="Model Name" Grid.Column="1" Grid.Row="7" FontFamily="calibri" FontSize="14" FontWeight="Bold"/>
                    <TextBox x:Name="txtwmicmn" Grid.Column="2" Grid.Row="7" Text="" Background="White" IsReadOnly="True"/>
                </Grid>
            </TabItem>
        </TabControl>
    </Grid>
</Window>

"@

#Create Object for read xml file.
$reader = (New-Object System.Xml.XmlNodeReader $xaml)
#Create Object for GUI object from xaml.
$window = [windows.markup.XamlReader]::Load($reader)
#endregion

#region User
#Find Input Text box from created XAML Window and store it in variable.
$txtBUserID = $window.FindName("txtBUserID")
$txtBUserName = $window.FindName("txtBUserName")
#Find Output Text box from created XAML Window and store it in variable.
$txtDName = $window.FindName("txtDName")
$txtDNName = $window.FindName("txtDNName")
$txtDR = $window.FindName("txtDR")
$txtEmailID = $window.FindName("txtEmailID")
$txtFName = $window.FindName("txtFName")
$txtgetUserID = $window.FindName("txtgetUserID")
$txtHD = $window.FindName("txtHD")
$txtLBPA = $window.FindName("txtLBPA")
$txtLLDate = $window.FindName("txtLLDate")
$txtLName = $window.FindName("txtLName")
$txtLO = $window.FindName("txtLO")
$txtMBRO = $window.FindName("txtMBRO")
$txtMngr = $window.FindName("txtMngr")
$txtPCName = $window.FindName("txtPCName")
$txtPG = $window.FindName("txtPG")
$txtPLS = $window.FindName("txtPLS")
$txtAcCreDate = $window.FindName("txtAcCreDate")
$txtAcExDate = $window.FindName("txtAcExDate")
#Find Button from created XAML Window and store it in variable.
$BtnUserID = $window.FindName("BtnUserID")
$BtnUserName = $window.FindName("BtnUserName")
#Declear acton for botton.
$BtnUserID.Add_Click({
userformclear
$inputuserid =$txtBUserID.Text
getuserdetails($inputuserid)

})
$BtnUserName.Add_Click({
userformclear
$txtBUserName1 = $txtBUserName.Text
$inputuserusername = "Name -eq " + "`"$txtBUserName1`""
$srpuser = "(Get-ADUser -Filter '$inputuserusername' |select SamAccountName).SamAccountName"
$inputuserid = Invoke-Expression $srpuser
getuserdetails($inputuserid)
})

#Insert Data Fuction 
function getuserdetails ($param1)
{
$command1 = Get-ADUser $param1 -Properties *
$txtDName.Text = ($command1 |Select-Object name).name
$txtDNName.Text = ($command1 |Select-Object DistinguishedName).DistinguishedName
$txtEmailID.Text = ($command1 |select EmailAddress).EmailAddress
$txtFName.Text = ($command1 |Select-Object GivenName).GivenName
$txtgetUserID.Text = ($command1 |Select-Object SamAccountName).SamAccountName
$txtHD.Text = ($command1 |select HomeDirectory).HomeDirectory
$txtLBPA.Text = ($command1 |select LastBadPasswordAttempt).LastBadPasswordAttempt
$txtLLDate.Text = ($command1 |select LastLogonDate).LastLogonDate
$txtLName.Text = ($command1 |Select-Object surname).surname
$txtLO.Text = ($command1 |select LockedOut).LockedOut

if((($command1 |select manager).manager) -eq $null)
{
$txtMngr.Text = ""
}else 
{
$txtMngr.Text = ((($command1 |select manager).manager).Trim("CN=")).SUBSTRING(0,((($command1 |select manager).manager).Trim("CN=").indexOf(',')))
}
$txtPG.Text = (((($command1 |select PrimaryGroup).PrimaryGroup).Trim("CN=")).substring(0,((($command1 |select PrimaryGroup).PrimaryGroup).Trim("CN=")).IndexOf(',')))
$txtPLS.Text = ($command1 |select PasswordLastSet).PasswordLastSet
$txtAcCreDate.Text = ($command1 |select Created).Created
$txtAcExDate.Text = ($command1 |select AccountExpirationDate).AccountExpirationDate

if((($command1 |select directReports).directReports) -eq $null)
{
$txtPCName.Text = ""
}else {
    foreach ($item in (($command1 |select directReports).directReports))
        {
            $txtDR.AppendText((($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(','))) + "`n")
        }
}

if((($command1 |select managedObjects).managedObjects) -eq $null)
{
$txtPCName.Text = ""
}
else {
    foreach ($item in (($command1 |select managedObjects).managedObjects))
        {
            $txtPCName.AppendText((($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(','))) + "`n")
        }
}
 

if((($command1 |select memberof).memberof) -eq $null)
{
$txtMBRO.Text = ""
}
else {
    foreach ($item in (($command1 |select memberof).memberof))
        {
            $txtMBRO.AppendText((($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(','))) + "`n")
        }
}

}

#Clear Screen Fuction 
function userformclear ()
{
$txtDName.Text = ""
$txtDNName.Text = ""
$txtDR.Text = ""
$txtEmailID.Text = ""
$txtFName.Text = ""
$txtgetUserID.Text = ""
$txtHD.Text = ""
$txtLBPA.Text = ""
$txtLLDate.Text = ""
$txtLName.Text = ""
$txtLO.Text = ""
$txtMBRO.Text = ""
$txtMngr.Text = ""
$txtPCName.Text = ""
$txtPG.Text = ""
$txtPLS.Text = ""
$txtAcCreDate.Text = ""
$txtAcExDate.Text = ""
}

#endregion User



#region Computer
#Find Input Text box from created XAML Window and store it in variable.
$txtComputerName = $window.FindName("txtComputerName")
#Find Output Text box from created XAML Window and store it in variable.
$txtIPv4 = $window.FindName("txtIPv4")
$txtCert = $window.FindName("txtCert")
$txtCPRName = $window.FindName("txtCPRName")
$txtCrtd = $window.FindName("txtCrtd")
$txtDescpn = $window.FindName("txtDescpn")
$txtEbld = $window.FindName("txtEbld")
$txtFQDN = $window.FindName("txtFQDN")
$txtLLD = $window.FindName("txtLLD")
$txtLtion = $window.FindName("txtLtion")
$txtManagedby = $window.FindName("txtManagedby")
$txtMOC = $window.FindName("txtMOC")
$txtOS = $window.FindName("txtOS")
$txtOSV = $window.FindName("txtOSV")
$txtOUC = $window.FindName("txtOUC")
$txtPGC = $window.FindName("txtPGC")
$txtSAN = $window.FindName("txtSAN")
$txtSerial = $window.FindName("txtSerial")

#Find Button from created XAML Window and store it in variable.
$BtnComputer = $window.FindName("BtnComputer")
#Declear acton for botton.

$BtnComputer.Add_click({
$txtIPv4.Text = ""
$txtCert.Text = ""
$txtCPRName.Text = ""
$txtCrtd.Text = ""
$txtDescpn.Text = ""
$txtEbld.Text = ""
$txtFQDN.Text = ""
$txtLLD.Text = ""
$txtLtion.Text = ""
$txtManagedby.Text = ""
$txtMOC.Text = ""
$txtOS.Text = ""
$txtOSV.Text = ""
$txtOUC.Text = ""
$txtPGC.Text = ""
$txtSAN.Text = ""
$txtSerial.Text = ""

$inputecomputername = $txtComputerName.Text
$ccommand = Get-ADComputer $inputecomputername -Properties *

$txtIPv4.Text = ($ccommand |select IPv4Address).IPv4Address
$txtCert.Text = ($ccommand |select Certificates).Certificates
$txtCPRName.Text = ($ccommand |select Name).Name
$txtCrtd.Text = ($ccommand |select Created).Created
$txtDescpn.Text = ($ccommand |select Description).Description
$txtEbld.Text = ($ccommand |select Enabled).Enabled
$txtFQDN.Text = ($ccommand |select DNSHostName).DNSHostName
$txtLLD.Text = ($ccommand |select LastLogonDate).LastLogonDate
$txtLtion.Text = ($ccommand |select Location).Location


if((($ccommand |select ManagedBy).ManagedBy) -eq $null)
{
$txtManagedby.Text = ""
}else {
$txtManagedby.Text = (((($ccommand |select ManagedBy).ManagedBy).Trim("CN=")).substring(0,((($ccommand |select ManagedBy).ManagedBy).Trim("CN=")).IndexOf(',')))
}


$txtOS.Text = ($ccommand |select OperatingSystem).OperatingSystem
$txtOSV.Text = ($ccommand |select OperatingSystemVersion).OperatingSystemVersion
$txtOUC.Text = ($ccommand |select DistinguishedName).DistinguishedName
$txtPGC.Text = (((($ccommand |select PrimaryGroup).PrimaryGroup).Trim("CN=")).substring(0,((($ccommand |select PrimaryGroup).PrimaryGroup).Trim("CN=")).IndexOf(',')))
$txtSAN.Text = ($ccommand |select SamAccountName).SamAccountName
$txtSerial.Text = ($ccommand).Serialnumber

if((($command1 |select directReports).directReports) -eq $null)
{
$txtMOC.Text = ""
}else {
    foreach ($item in (($ccommand |select MemberOf).MemberOf))
    {
        $txtMOC.AppendText((($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(','))) + "`n")
    }
}

})

#endregion Computer

#region Group
#Find Input Text box from created XAML Window and store it in variable.
$txtGroupName = $window.FindName("txtGroupName")
#Find Output Text box from created XAML Window and store it in variable.
$txtCD = $window.FindName("txtCD")
$txtgcat = $window.FindName("txtgcat")
$txtgcn = $window.FindName("txtgcn")
$txtgd = $window.FindName("txtgd")
$txtGDN = $window.FindName("txtGDN")
$txtGManBy = $window.FindName("txtGManBy")
$txtgmemby = $window.FindName("txtgmemby")
$txtgml = $window.FindName("txtgml")
$txtGName = $window.FindName("txtGName")
$txtGS = $window.FindName("txtGS")
$txtPFAD = $window.FindName("txtPFAD")
$txtsaman = $window.FindName("txtsaman")
#Find Button from created XAML Window and store it in variable.
$BtnGroup = $window.FindName("BtnGroup")
#Declear acton for botton.

#endregion Group


#region Computer WMIC
#Find Input Text box from created XAML Window and store it in variable.
$txtComputerwmicName = $window.FindName("txtComputerwmicName")
#Find Output Text box from created XAML Window and store it in variable.
$txtuuid = $window.FindName("txtuuid")
$txtwmicCN = $window.FindName("txtwmicCN")
$txtWmiccu = $window.FindName("txtWmiccu")
$txtWmicManu = $window.FindName("txtWmicManu")
$txtwmicmn = $window.FindName("txtwmicmn")
#Find Button from created XAML Window and store it in variable.
$BtnComputerWmic = $window.FindName("BtnComputerWmic")
#Declear acton for botton.


#endregion WMIC

#region

#Find Text box from created XAML Window and store it in variable.
#$PCName = $window.FindName("PCName")
#$UserName = $window.FindName("UserName")
#$UserID = $window.FindName("UserID")


#Find Button from created XAML Window and store it in variable.
#$OK = $window.FindName("OK")
#$Cancel = $window.FindName("Cancel")

#Declear acton for botton.
#$OK.Add_Click({
#Get value from text box and store it into variable.
#$global:x = $PCName.Text;
#$Global:y = $UserID.Text;
#$Global:Z = $UserName.Text;
#Close window
#$window.Close()})
#$Cancel.Add_Click({$window.Close()})
#Pop window
$window.showDialog() |Out-Null
#write variable values in 
#write-host $x
#write-host $y
#write-host $z
#endregion