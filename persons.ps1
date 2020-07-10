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

#Query to get all person information adjust to liking#
$personQuery = "SELECT [Medewerker] as [EmployeeId]
                          ,[Nummer] as [Id]
                          ,[Nummer] as [ExternalId]
                          ,[FirstName] + ' ' + [LastName] + ' (' + [Medewerker] + ')' as [DisplayName]
                          ,[Initials]
                          ,[Nickname]
                          ,[FirstName]
                          ,[NamePrefix]
                          ,[LastName]
                          ,[Geboortedatum] as [DateOfBirth]
                          ,[Geslacht_code] as [Sex]
                          ,[Burgelijke_staat] as [MaritalStatus]
                          ,[PartnerNamePrefix]
                          ,[PartnerName]
                          ,[Naamgebruik_code] as [NamingConvention]
                          ,[Straat] as [Street]
                          ,[Straat_toevoeging] as [StreetAddition]
                          ,[Huisnummer] as [HouseNumber]
                          ,[Huisnummer_toevoeging] as [HouseNumberAddition]
                          ,[Postcode] as [PostalCode]
                          ,[Woonplaats] as [City]
                          ,[Land] as [County]
                          ,[Mobiel_prive] as [MobilePhoneNumberPrivate]
                          ,[Mobiel_werk] as [MobilePhoneNumberWork]
                          ,[Telefoonnr_prive] as [PhoneNumberPrivate]
                          ,[Telefoonnr_werk] as [PhoneNumberWork]
                          ,[E-mail_prive] as [EmailAddressPrivate]
                          ,[E-mail_werk] as [EmailAddressWork]
                          ,[Geblokkeerd] as [IsBlocked]
                          ,[Datum_in_dienst] as [EmploymentStartDate] 
                          ,[Datum_uit_dienst] as [EmploymentEndDate]
                          ,[MultipleContracts] as [HasMultipleContracts]
      FROM [dbo].[T4E_IAM_Persons] WHERE [lang_id] = $languageId
      ORDER by [Medewerker] asc";


#Query to get all contract information adjust to liking#
$contractsQuery = "SELECT [Medewerker] as [EmployeeId]
                          ,[Volgnummer_contract] as [Number]
                          ,[Soort_medewerker] as [EmploymentType]
                          ,[Aantal_FTE] as [FTE]
                          ,[Begindatum_contract] as [StartDate]
                          ,[Einddatum_contract] as [EndDate]
                          ,[Werkgever] as [Employer] 
                          ,[Organisatorische_eenheid] as [DepartmentId]
                          ,[Functie] as [FunctionId]
                          ,[Kostenplaats] as [CostCenter]
                          ,[Leidinggevende] as [PrimaryManagerId]
                          ,[Vervangende_leidinggevende] as [SecondaryManagerId]
                    FROM [dbo].[T4E_IAM_Contracts] WHERE [lang_id] = $languageId"


#Query to get all function information adjust to liking#
$functionsQuery = "SELECT [Functie] as [Id]
                          ,[Omschrijving] as [Description]
                    FROM [dbo].[T4E_IAM_OrganizationalFunctions] WHERE [lang_id] = $languageId"

#Query to get all department information adjust to liking#
$departmentsQuery = "SELECT [Organisatorische_eenheid] as [Id]
                            ,[Omschrijving] as [DisplayName]
                            ,[Omschrijving] as [Name]
                            ,[Leidinggevende] as [ManagerId]
                            ,[Parent] as [ParentDepartmentId]
                    FROM [dbo].[T4E_IAM_OrganizationalUnits] WHERE [lang_id] = $languageId"

    
$persons = PerfromQuery -Query $personQuery -ConnectionString $connectionString
#$personLookup = $persons | ForEach-Object { $_ } #copy persons
$contracts = PerfromQuery -Query $contractsQuery -ConnectionString $connectionString
$functions = PerfromQuery -Query $functionsQuery -ConnectionString $connectionString
$departments = PerfromQuery -Query $departmentsQuery -ConnectionString $connectionString


Foreach ($person in $persons) {
    
    # Note that externalId and displayName are required to set. This is currently done in the query
    # $person | Add-Member -Name "ExternalId" -MemberType NoteProperty -Value $person.Id -Force;
    # $person | Add-Member -Name "DisplayName" -MemberType NoteProperty -Value "$($person.FirstName) $($person.LastName) ($($person.EmployeeId))" -Force;

    #link contracts
    [array]$contractsOfPerson = $($contracts | Where-Object { $_.EmployeeId -eq $person.EmployeeId })
    $person | Add-Member -Name "Contracts" -MemberType NoteProperty -Value $contractsOfPerson -Force;

    foreach ($contract in $person.Contracts) {

        # Set special objects if needed for example: manager, department or function objects
        #$contract | Add-Member -Name "PrimaryManager" -MemberType NoteProperty -Value $($personLookup | Where-Object { $_.EmployeeId -eq $contract.PrimaryManagerId }) -Force;
        #$contract | Add-Member -Name "SecondaryManager" -MemberType NoteProperty -Value $($personLookup | Where-Object { $_.EmployeeId -eq $contract.SecondaryManagerId }) -Force;
        $contract | Add-Member -Name "Department" -MemberType NoteProperty -Value $($departments | Where-Object { $_.Id -eq $contract.DepartmentId }) -Force;

        #if($contract.Department) {
        #    $contract.Department | Add-Member -Name "Manager" -MemberType NoteProperty -Value $($personLookup | Where-Object { $_.EmployeeId -eq $contract.Department.ManagerId }) -Force;
        #}

        $contract | Add-Member -Name "Function" -MemberType NoteProperty -Value $($functions | Where-Object { $_.Id -eq $contract.FunctionId }) -Force;
    }

    Write-Output $person | ConvertTo-Json -Depth 10;
}