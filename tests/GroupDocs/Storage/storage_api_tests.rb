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

module GroupDocsStorageCloud
  require_relative 'base_test_context'
  class StorageApiTests < BaseTestContext

    #
    #  Test case for putCreate
    #
    #  Create a specific file.
    #
    #

    def test_PutCreate()


      path = 'folder/FileTest.pdf'
      versionId = nil
      storage = 'StorageName'
      request = GetDownloadRequest.new(path, versionId, storage)

      result = @storage_api.get_download(request)
      assert result != nil , 'Error while downloading document'
      file = result


      #file = File.read('FileTest.pdf')
      path = 'folder1/FileTest.pdf'
      version_id = nil
      storage = 'StorageName'
      request = PutCreateRequest.new(path, file, version_id, storage)

      result = @storage_api.put_create(request)
      assert result.code == 200,'Error while creating document'

    end



    #
    #
    # Test case for getDownload
    #
    #  Download a specific file.
    #
    #

    def test_get_download()

      path = 'folder1/FileTest.pdf'
      versionId = nil
      storage = 'StorageName'
      request = GetDownloadRequest.new(path, versionId, storage)
      result = @storage_api.get_download(request)
      assert  result != nil, 'Error while downloading document'
    end



    #
    #
    #   Test case for deleteFile
    #
    #   Remove a specific file.
    #
    #

    def test_delete_file()

      path = 'FileTest.pdf'
      versionId = nil
      storage = 'StorageName'
      request = DeleteFileRequest.new(path, versionId, storage)

      result = @storage_api.delete_file(request)
      assert result.code == 200,'Error while deleting document'
    end


    #
    #
    #   Test case for putCopy
    #
    #   Copy a specific file.
    #
    #

    def test_put_copy

      path = 'folder1/FileTest.pdf'
      newdest = 'folder2/folder1/FileTest.pdf'
      versionId = nil
      storage = 'StorageName'
      destStorage = 'DestStorageName'
      request = PutCopyRequest.new(path, newdest, versionId, storage, destStorage)

      result = @storage_api.put_copy(request)
      assert result.code == 200,'Error while copying document'

    end



    #
    #  Test case for postMoveFile
    #
    #  Move a specific file.
    #
    #

    def test_post_move_file

      src = 'folder1/FileTest.pdf'
      dest = 'folder3/folder1/FileTest.pdf'
      versionId = nil
      storage = 'StorageName'
      destStorage = 'StorageName'
      request = PostMoveFileRequest.new(src, dest, versionId, storage, destStorage)

      result = @storage_api.post_move_file(request)
      assert result.code == 200, 'Error while moving document'

    end


    #  Test case for putCreate
    #
    #  Create a specific folder.
    #
    #

    def test_put_create_folder

      path = 'folder4'
      storage = 'StorageName'
      destStorage = 'DestStorageName'
      request = PutCreateFolderRequest.new(path, storage, destStorage)

      result = @storage_api.put_create_folder(request)
      assert result.code == 200, 'Error put create folder'

    end



    #
    #  Test case for getListFiles
    #
    #  Get the file listing of a specific folder.
    #
    #

    def test_get_list_files()

      path = 'folder1'
      storage = 'StorageName'
      request = GetListFilesRequest.new(path, storage)

      result = @storage_api.get_list_files(request)
      assert result.code == 200, 'Error while getting list files'
      assert result.files != nil

    end


    #
    #  Test case for deleteFolder
    #
    #  Remove a specific folder.
    #
    #

    def test_delete_folder

      path = 'folder4'
      storage = 'StorageName'
      recursive = true
      request = DeleteFolderRequest.new(path, storage, recursive)

      result = @storage_api.delete_folder(request)
      assert result.code == 200, 'Error while deleting folder'

    end


    #
    #  Test case for putCopyFolder
    #
    #  Copy a folder.
    #
    #
    #

    def test_put_copy_folder()

      path = 'folder5'
      newdest = 'folder6/folder5'
      storage = 'StorageName'
      dest_storage = 'DestStorageName'
      request = PutCopyFolderRequest.new(path, newdest, storage, dest_storage)

      result = @storage_api.put_copy_folder(request)
      assert result.code == 200, 'Error while copying folder'

    end

    #
    #  Test case for postMoveFolder
    #
    #  Move a specific folder.
    #
    #

    def test_post_move_folder()

      src = 'folder6'
      dest = 'folder7/folder6'
      storage = 'StorageName'
      dest_storage = 'DestStorageName'
      request = PostMoveFolderRequest.new(src, dest, storage, dest_storage)

      result = @storage_api.post_move_folder(request)
      assert result.code == 200, 'Error while moving folder'

    end


    #
    #  Test case for getDiscUsage
    #
    #  Check the disk usage of the current account.
    #
    #

    def test_get_disc_usage()

      storage = 'StorageName'
      request = GetDiscUsageRequest.new(storage)

      result = @storage_api.get_disc_usage(request)
      assert result.code == 200, 'Error getting disc usage'
      assert result.discUsage != nil

    end


    #
    #  Test case for getIsExist
    #
    #  Check if a specific file or folder exists.
    #
    #

    def test_get_is_exist()

      path = 'folder7'
      versionId = nil
      storage = 'StorageName'
      request = GetIsExistRequest.new(path, versionId, storage)

      result = @storage_api.get_is_exist(request)
      assert result.code == 200, 'Error get is file or folder exist'
      assert result.fileExist != nil

    end


    #
    #  Test case for getIsStorageExist
    #
    #  Check if storage exists.
    #
    #

    def test_get_is_storage_exist()

      name = 'StorageName'
      request = GetIsStorageExistRequest.new(name)

      result = @storage_api.get_is_storage_exist(request)
      assert result.code == 200, 'Error get is storage exists'

    end


    #
    #  Test case for getListFileVersions
    #
    #  Get the file's versions list.
    #
    #

    def test_get_list_file_versions


      path = 'folder1/FileTest.pdf'
      storage = "StorageName"
      request = GetListFileVersionsRequest.new(path, storage)

      result = @storage_api.get_list_file_versions(request)
      assert result.code == 200, 'Error get list file versions'
      assert result.fileVersions != nil

    end


  end
end