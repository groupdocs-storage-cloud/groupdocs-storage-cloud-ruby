
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="put_create_request.rb">
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

 #
 # Request model for PutCreate operation.
 #
class PutCreateRequest

     # Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext
		attr_accessor :path
		
     # File to upload
		attr_accessor :file
		
     # Source file's version
		attr_accessor :version_id
		
     # User's storage name
		attr_accessor :storage
	
     #
     # Initializes a new instance.
     # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext
     # @param file File to upload
     # @param version_id Source file's version
     # @param storage User's storage name
		def initialize(path, file, version_id=nil, storage=nil)
			self.path=path
			self.file=file
			self.version_id=version_id
			self.storage=storage
		end
	
	end
end

