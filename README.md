This repository contains GroupDocs.Storage Cloud SDK for Ruby source code. This SDK allows you to work with GroupDocs.Storage Cloud REST APIs in your Ruby applications quickly and easily, with zero initial cost.
See [API Reference](https://apireference.groupdocs.cloud/storage/) for full API specification.

## How to use the SDK?
The complete source code is available in this repository folder. You can either directly use it in your project via source code or get [RubyGem distribution]() (recommended). For more details, please visit our [documentation website](https://docs.groupdocs.cloud/display/storagecloud/Available+SDKs).

### Prerequisites

To use GroupDocs Storage for Cloud Ruby SDK you need to register an account with [GroupDocs Cloud](https://www.groupdocs.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.groupdocs.cloud/#/apps). There is free quota available.

### Installation


### Sample usage
```ruby
@config = Configuration.new
@config.api_key['api_key'] = '' # Put your's api_key and app_sid
@config.api_key['app_sid'] = ''
@api_client = ApiClient.new @config
@storage_api = StorageApi.new @api_client
$path = "folder/FileTest.pdf"
$versionId = nil
$storage = "StorageName"
$request = GetDownloadRequest.new($path, $versionId, $storage)
$result = @storage_api.get_download($request)
```
      
[Tests](tests/) contain various examples of using the SDK.
Please put your credentials into [Configuration](lib/GroupDocs/Storage/configuration.rb).

## Dependencies
- Ruby 2.1 or later
- referenced packages (see [here](Gemfile) for more details)

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.groupdocs.cloud/c/storage).
