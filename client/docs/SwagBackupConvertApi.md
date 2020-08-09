# SwagBackupConvertApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dataintegrationBackupConvertMssqlBakGetTablesPost**](SwagBackupConvertApi.md#dataintegrationBackupConvertMssqlBakGetTablesPost) | **POST** /dataintegration/backup/convert/mssql/bak/get/tables | Lists all tables stored in a SQL Server Backup (.BAK) file
[**dataintegrationBackupConvertMssqlBakToCsvPost**](SwagBackupConvertApi.md#dataintegrationBackupConvertMssqlBakToCsvPost) | **POST** /dataintegration/backup/convert/mssql/bak/to/csv | Converts a SQL Server Backup (.BAK) file into CSV for a specified table


<a name="dataintegrationBackupConvertMssqlBakGetTablesPost"></a>
# **dataintegrationBackupConvertMssqlBakGetTablesPost**
> SwagMssqlBakEnumerateTablesResult dataintegrationBackupConvertMssqlBakGetTablesPost(inputFile)

Lists all tables stored in a SQL Server Backup (.BAK) file

### Example
```java
SwagBackupConvertApi api = new SwagBackupConvertApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagMssqlBakEnumerateTablesResult result = api.dataintegrationBackupConvertMssqlBakGetTablesPost(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on | [optional]

### Return type

[**SwagMssqlBakEnumerateTablesResult**](SwagMssqlBakEnumerateTablesResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="dataintegrationBackupConvertMssqlBakToCsvPost"></a>
# **dataintegrationBackupConvertMssqlBakToCsvPost**
> String dataintegrationBackupConvertMssqlBakToCsvPost(tableName, inputFile)

Converts a SQL Server Backup (.BAK) file into CSV for a specified table

Input the target table to extract the data as a CSV format file.  Supports a wide array of SQL Server .BAK files and SQL Server backup file versions.  Consumes 1 API call per MB of input data.

### Example
```java
SwagBackupConvertApi api = new SwagBackupConvertApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'tableName' => 'tableName_example',
    'inputFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    String result = api.dataintegrationBackupConvertMssqlBakToCsvPost(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableName** | **String**| Name of the table to return | [optional]
 **inputFile** | **Blob**| Input file to perform the operation on | [optional]

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

