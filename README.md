# videoapi API Client

The video APIs help you convert, encode, and transcode videos.

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
SwagAudioApi api = new SwagAudioApi();
SwagClient client = api.getClient();


Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'bitRate' => Object.getExample()
};

try {
    // cross your fingers
    Blob result = api.audioConvertToAac(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://api.cloudmersive.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwagAudioApi* | [**audioConvertToAac**](docs/SwagAudioApi.md#audioConvertToAac) | **POST** /audio/convert/to/aac | Convert Audio File to AAC format.
*SwagAudioApi* | [**audioConvertToM4a**](docs/SwagAudioApi.md#audioConvertToM4a) | **POST** /audio/convert/to/m4a | Convert Audio File to M4A format.
*SwagAudioApi* | [**audioConvertToMp3**](docs/SwagAudioApi.md#audioConvertToMp3) | **POST** /audio/convert/to/mp3 | Convert Audio File to MP3 format.
*SwagAudioApi* | [**audioConvertToWav**](docs/SwagAudioApi.md#audioConvertToWav) | **POST** /audio/convert/to/wav | Convert Audio File to WAV format.
*SwagVideoApi* | [**videoConvertToGif**](docs/SwagVideoApi.md#videoConvertToGif) | **POST** /video/convert/to/gif | Convert Video to Animated GIF format.
*SwagVideoApi* | [**videoConvertToMov**](docs/SwagVideoApi.md#videoConvertToMov) | **POST** /video/convert/to/mov | Convert Video to MOV format.
*SwagVideoApi* | [**videoConvertToMp4**](docs/SwagVideoApi.md#videoConvertToMp4) | **POST** /video/convert/to/mp4 | Convert Video to MP4 format.
*SwagVideoApi* | [**videoConvertToStillFrames**](docs/SwagVideoApi.md#videoConvertToStillFrames) | **POST** /video/convert/to/still-frames | Convert Video to PNG Still Frames.
*SwagVideoApi* | [**videoConvertToWebm**](docs/SwagVideoApi.md#videoConvertToWebm) | **POST** /video/convert/to/webm | Convert Video to WEBM format.
*SwagVideoApi* | [**videoCutVideo**](docs/SwagVideoApi.md#videoCutVideo) | **POST** /video/cut | Cut a Video to a Shorter Length
*SwagVideoApi* | [**videoGetInfo**](docs/SwagVideoApi.md#videoGetInfo) | **POST** /video/convert/get-info | Get detailed information about a video or audio file
*SwagVideoApi* | [**videoResizeVideo**](docs/SwagVideoApi.md#videoResizeVideo) | **POST** /video/resize/preserveAspectRatio | Resizes a Video Preserving the Original Aspect Ratio.
*SwagVideoApi* | [**videoResizeVideoSimple**](docs/SwagVideoApi.md#videoResizeVideoSimple) | **POST** /video/resize/target | Resizes a Video without Preserving Aspect Ratio.
*SwagVideoApi* | [**videoScanForNsfw**](docs/SwagVideoApi.md#videoScanForNsfw) | **POST** /video/scan/nsfw | Scan a Video for NSFW content.
*SwagVideoApi* | [**videoSplitVideo**](docs/SwagVideoApi.md#videoSplitVideo) | **POST** /video/split | Split a Video into Two Shorter Videos


## Documentation for Models

 - [SwagMediaInformation](docs/SwagMediaInformation.md)
 - [SwagNsfwResult](docs/SwagNsfwResult.md)
 - [SwagNsfwScannedFrame](docs/SwagNsfwScannedFrame.md)
 - [SwagSplitVideoResult](docs/SwagSplitVideoResult.md)
 - [SwagStillFrame](docs/SwagStillFrame.md)
 - [SwagStillFramesResult](docs/SwagStillFramesResult.md)
 - [SwagVideoFile](docs/SwagVideoFile.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header


## Author



