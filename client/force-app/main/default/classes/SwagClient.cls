public class SwagClient extends Swagger.ApiClient {
    public SwagClient() {
        basePath = 'https://localhost';
        calloutName = 'Data_Integration_API';
        authentications.put('Apikey', new Swagger.ApiKeyHeaderAuth('Apikey'));
    }
}
