@isTest
private class SwagBackupConvertApiTest {
    /**
     * Lists all tables stored in a SQL Server Backup (.BAK) file
     *
     * 
     */
    @isTest
    private static void dataintegrationBackupConvertMssqlBakGetTablesPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagBackupConvertApi api;
        SwagMssqlBakEnumerateTablesResult response;
        SwagMssqlBakEnumerateTablesResult expectedResponse;

        client = new SwagClient();
        api = new SwagBackupConvertApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "tables" : [ {\r\n    "schemaName" : "schemaName",\r\n    "tableName" : "tableName"\r\n  }, {\r\n    "schemaName" : "schemaName",\r\n    "tableName" : "tableName"\r\n  } ],\r\n  "successful" : true\r\n}');
        expectedResponse = SwagMssqlBakEnumerateTablesResult.getExample();
        response = (SwagMssqlBakEnumerateTablesResult) api.dataintegrationBackupConvertMssqlBakGetTablesPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Converts a SQL Server Backup (.BAK) file into CSV for a specified table
     *
     * Input the target table to extract the data as a CSV format file.  Supports a wide array of SQL Server .BAK files and SQL Server backup file versions.  Consumes 1 API call per MB of input data.
     */
    @isTest
    private static void dataintegrationBackupConvertMssqlBakToCsvPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'tableName' => 'tableName_example',
            'inputFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagBackupConvertApi api;
        String response;
        String expectedResponse;

        client = new SwagClient();
        api = new SwagBackupConvertApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = ;
        response = (String) api.dataintegrationBackupConvertMssqlBakToCsvPost(params);
        System.assertEquals(expectedResponse, response);
    }
}