# dataintegrationapi API Client

Easily and directly query database backup files, convert into other file formats.

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)


If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```


## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
   $ sfdx force:source:push
   ```
3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

    ```bash
    $ sfdx sfdx force:apex:test:run
    ```
5. Retrieve the job id from the console and check the test results.

  ```bash
  $ sfdx force:apex:test:report -i theJobId
  ```


## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
SwagBackupConvertApi api = new SwagBackupConvertApi();
SwagClient client = api.getClient();


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

## Documentation for API Endpoints

All URIs are relative to *https://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwagBackupConvertApi* | [**dataintegrationBackupConvertMssqlBakGetTablesPost**](docs/SwagBackupConvertApi.md#dataintegrationBackupConvertMssqlBakGetTablesPost) | **POST** /dataintegration/backup/convert/mssql/bak/get/tables | Lists all tables stored in a SQL Server Backup (.BAK) file
*SwagBackupConvertApi* | [**dataintegrationBackupConvertMssqlBakToCsvPost**](docs/SwagBackupConvertApi.md#dataintegrationBackupConvertMssqlBakToCsvPost) | **POST** /dataintegration/backup/convert/mssql/bak/to/csv | Converts a SQL Server Backup (.BAK) file into CSV for a specified table


## Documentation for Models

 - [SwagMssqlBakEnumerateTablesResult](docs/SwagMssqlBakEnumerateTablesResult.md)
 - [SwagMssqlTable](docs/SwagMssqlTable.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header


## Author



