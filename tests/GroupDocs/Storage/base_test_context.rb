
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="delete_file_request.rb">
#   Copyright (c) 2018 GroupDocs.Storage for Cloud
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# </summary>
# --------------------------------------------------------------------------------------------------------------------
#

module GroupDocsStorageSdk
require "minitest/autorun"
require "minitest/unit"
require 'json'
require 'io/console'
require_relative '../../../lib/group_docs_storage_sdk'
class BaseTestContext < Minitest::Test
  include MiniTest::Assertions
  def setup
    path = File.join(File.dirname(File.dirname(File.absolute_path(__FILE__))), 'Storage/config.json')
    $contents = File.read(path)
    data_hash = JSON.parse($contents)
    #TODO: Get your AppSID and AppKey at https://dashboard.groupdocs.cloud
    #     (free registration is required).
    GroupDocsStorageSdk.configure do |config|
      config.api_key['api_key'] = data_hash['AppKey']
      config.api_key['app_sid'] = data_hash['AppSID']
    end
    @storage_api = StorageApi.new
  end

end
end