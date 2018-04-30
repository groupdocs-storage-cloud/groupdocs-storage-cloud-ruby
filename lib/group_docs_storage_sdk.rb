# ------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="groupdocs_storage_sdk.rb">
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
# ------------------------------------------------------------------------------------

# Common files
require_relative '../lib/GroupDocs/Storage/api_client'
require_relative '../lib/GroupDocs/Storage/api_error'
require_relative '../lib/GroupDocs/Storage/version'
require_relative '../lib/GroupDocs/Storage/configuration'

# Models
require_relative '../lib/GroupDocs/Storage/models/disc_usage'
require_relative '../lib/GroupDocs/Storage/models/file_exist'
require_relative '../lib/GroupDocs/Storage/models/file_response'
require_relative '../lib/GroupDocs/Storage/models/group_docs_response'
require_relative '../lib/GroupDocs/Storage/models/copy_file_response'
require_relative '../lib/GroupDocs/Storage/models/create_folder_response'
require_relative '../lib/GroupDocs/Storage/models/disc_usage_response'
require_relative '../lib/GroupDocs/Storage/models/file_exist_response'
require_relative '../lib/GroupDocs/Storage/models/file_version'
require_relative '../lib/GroupDocs/Storage/models/file_versions_response'
require_relative '../lib/GroupDocs/Storage/models/files_response'
require_relative '../lib/GroupDocs/Storage/models/move_file_response'
require_relative '../lib/GroupDocs/Storage/models/move_folder_response'
require_relative '../lib/GroupDocs/Storage/models/remove_file_response'
require_relative '../lib/GroupDocs/Storage/models/remove_folder_response'
require_relative '../lib/GroupDocs/Storage/models/storage_exist_response'
require_relative '../lib/GroupDocs/Storage/models/upload_response'

# APIs
require_relative '../lib/GroupDocs/Storage/api/storage_api'

module GroupDocsStorageSdk
  # Main module
  class << self
    # Configure sdk using block.
    # GroupDocsStorageSdk.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.default
      else
        Configuration.default
      end
    end
  end
end