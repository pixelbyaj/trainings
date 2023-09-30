$Server = "LOCALHOST\SQLEXPRESS"
$DBName = "test"

$SqlConnection = New-Object System.Data.SqlClient.SqlConnection "server=$Server;database=$DBName;Integrated Security=True"
$SqlConnection.Open()
$SqlCommand = $SqlConnection.CreateCommand()
$SqlCommand.CommandType = [System.Data.CommandType] "Text"
$SqlCommand.CommandText = "SELECT * FROM People"

# $Param = New-Object System.Data.SqlClient.SqlParameter
# $Param.ParameterName = "@FieldName"
# $Param.DbType = [System.Data.DbType]"String"
# $SqlCommand.Parameters.Add($Param)
# $SqlCommand.Parameters["@FieldName"].Value = "1"

try{
    $dt = New-Object System.Data.DataTable
    $da = New-Object System.Data.SqlClient.SqlDataAdapter -ArgumentList $SqlCommand
    $da.Fill($dt)
    $row =""

    foreach($dr in $dt.Rows){
        $row += $dr[1]+"`r`n"
    }

    Add-Content "$PSScriptRoot\files\test.csv" -value $row.TrimEnd("`r`n")
}
finally {
    $SqlCommand.Dispose()
    $SqlConnection.Close()
    $SqlConnection.Dispose()
}