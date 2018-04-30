
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="delete_folder_request.rb">
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
 # Request model for DeleteFolder operation.
 #
class DeleteFolderRequest

     # Folder path e.g. /Folder1
		attr_accessor :path
		
     # User's storage name
		attr_accessor :storage
		
     # Remove recursivelly inner folder/files. If false and folder contains data than exception is raised.
		attr_accessor :recursive
	
     #
     # Initializes a new instance.
     # @param path Folder path e.g. /Folder1
     # @param storage User's storage name
     # @param recursive Remove recursivelly inner folder/files. If false and folder contains data than exception is raised.
		def initialize(path, storage=nil, recursive=nil)
			self.path=path
			self.storage=storage
			self.recursive=recursive
		end
	
	end
end
 #
