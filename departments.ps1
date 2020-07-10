function PerfromQuery($Query, $ConnectionString) {
    try {
        # Initialize connection and query information
        # Connect to the SQL server
        $SqlConnection = New-Object System.Data.SqlClient.SqlConnection;
        $SqlConnection.ConnectionString = $ConnectionString;
        $SqlCmd = New-Object System.Data.SqlClient.SqlCommand;
        $SqlCmd.Connection = $SqlConnection;
        $SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter;
        
        #Query to get all person information adjust to liking#
        $SqlCmd.CommandText = $query;
        $SqlAdapter.SelectCommand = $SqlCmd;
        
        $DataSet = New-Object System.Data.DataSet;
        $SqlAdapter.Fill($DataSet) | out-null;
        $sqlData = $DataSet.Tables[0];
        return $sqlData | Select-Object -Property * -ExcludeProperty RowError, RowState, Table, ItemArray, HasErrors;
    }
    catch {
        Write-Error "Something went wrong while connecting to the SQL server";
        Write-Error $_.Exception.Message;
        Exit;
    }
}

$server = ""
$database = ""
$userId = ""
$password = ""
$connectionString = "Data Source=tcp:$server,1433;Initial Catalog=$database;User Id=$userId;Password=$password;";
$languageId = 2;

#Query to get all department information adjust to liking#
$departmentsQuery = "SELECT [Organisatorische_eenheid] as [ExternalId]
                            ,[Omschrijving] as [DisplayName]
                            ,[Omschrijving] as [Name]
                            ,[Leidinggevende] as [ManagerId]
                            ,[Parent] as [ParentDepartmentId]
                    FROM [dbo].[T4E_IAM_OrganizationalUnits] WHERE [lang_id] = $languageId"

$departments = PerfromQuery -Query $departmentsQuery -ConnectionString $connectionString
    
Foreach ($department in $departments) {
    Write-Output $department | ConvertTo-Json -Depth 10;
}