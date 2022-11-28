$Server = "SERVERNAME"
$DBName = "DBNAME"

$SqlConnection = New-Object System.Data.SqlClient.SqlConnection "server=$Server;database=$DBName;Integrated Security=True"
$SqlConnection.Open()
$SqlCommand = $SqlConnection.CreateCommand()
$SqlCommand.CommandType = [System.Data.CommandType] "Text"
$SqlCommand.CommandText = "SELECT * FORM TableName"

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
        $row += $dr[0]
    }

    Add-Content "$PSScriptRoot\files\test.csv" - value $row
}
finally {
    $SqlCommand.Dispose()
    $SqlConnection.Close()
    $SqlConnection.Dispose()
}