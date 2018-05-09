 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="storage_api.rb">
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

require 'uri'

module GroupDocsStorageCloud
  #
  # GroupDocs.Storage for Cloud API
  #
  class StorageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      require_all '../models/requests'
    end

    # Remove a specific file 
    # 
	# @param request DeleteFileRequest
    # @return [RemoveFileResponse]
    def delete_file(request)
      data, _status_code, _headers = delete_file_with_http_info(request)
      data
    end

    # Remove a specific file 
    # 
    # @param request DeleteFileRequest
    # @return [Array<(RemoveFileResponse, Fixnum, Hash)>]
    # RemoveFileResponse data, response status code and response headers
    private def delete_file_with_http_info(request)
      unless request.is_a? DeleteFileRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.delete_file ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && request.path.nil?
        raise ArgumentError, 'Missing the required parameter path when calling StorageApi.delete_file'
      end
      # resource path
      local_var_path = '/storage/file'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('path')] = request.path
      query_params[downcase_first_letter('path')] = request.path unless request.path.nil?
      query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'RemoveFileResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#delete_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Remove a specific folder 
    # 
	# @param request DeleteFolderRequest
    # @return [RemoveFolderResponse]
    def delete_folder(request)
      data, _status_code, _headers = delete_folder_with_http_info(request)
      data
    end

    # Remove a specific folder 
    # 
    # @param request DeleteFolderRequest
    # @return [Array<(RemoveFolderResponse, Fixnum, Hash)>]
    # RemoveFolderResponse data, response status code and response headers
    private def delete_folder_with_http_info(request)
      unless request.is_a? DeleteFolderRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.delete_folder ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && request.path.nil?
        raise ArgumentError, 'Missing the required parameter path when calling StorageApi.delete_folder'
      end
      # resource path
      local_var_path = '/storage/folder'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('path')] = request.path
      query_params[downcase_first_letter('path')] = request.path unless request.path.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('recursive')] = request.recursive unless request.recursive.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'RemoveFolderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#delete_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Check the disk usage of the current account 
    # 
	# @param request GetDiscUsageRequest
    # @return [DiscUsageResponse]
    def get_disc_usage(request)
      data, _status_code, _headers = get_disc_usage_with_http_info(request)
      data
    end

    # Check the disk usage of the current account 
    # 
    # @param request GetDiscUsageRequest
    # @return [Array<(DiscUsageResponse, Fixnum, Hash)>]
    # DiscUsageResponse data, response status code and response headers
    private def get_disc_usage_with_http_info(request)
      unless request.is_a? GetDiscUsageRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.get_disc_usage ...'
      end
      # resource path
      local_var_path = '/storage/disc'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'DiscUsageResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#get_disc_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Download a specific file 
    # 
	# @param request GetDownloadRequest
    # @return [File]
    def get_download(request)
      data, _status_code, _headers = get_download_with_http_info(request)
      data
    end

    # Download a specific file 
    # 
    # @param request GetDownloadRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def get_download_with_http_info(request)
      unless request.is_a? GetDownloadRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.get_download ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && request.path.nil?
        raise ArgumentError, 'Missing the required parameter path when calling StorageApi.get_download'
      end
      # resource path
      local_var_path = '/storage/file'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('path')] = request.path
      query_params[downcase_first_letter('path')] = request.path unless request.path.nil?
      query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#get_download\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Check if a specific file or folder exists
    # 
	# @param request GetIsExistRequest
    # @return [FileExistResponse]
    def get_is_exist(request)
      data, _status_code, _headers = get_is_exist_with_http_info(request)
      data
    end

    # Check if a specific file or folder exists
    # 
    # @param request GetIsExistRequest
    # @return [Array<(FileExistResponse, Fixnum, Hash)>]
    # FileExistResponse data, response status code and response headers
    private def get_is_exist_with_http_info(request)
      unless request.is_a? GetIsExistRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.get_is_exist ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && request.path.nil?
        raise ArgumentError, 'Missing the required parameter path when calling StorageApi.get_is_exist'
      end
      # resource path
      local_var_path = '/storage/exist'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('path')] = request.path
      query_params[downcase_first_letter('path')] = request.path unless request.path.nil?
      query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'FileExistResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#get_is_exist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Check if storage exists 
    # 
	# @param request GetIsStorageExistRequest
    # @return [StorageExistResponse]
    def get_is_storage_exist(request)
      data, _status_code, _headers = get_is_storage_exist_with_http_info(request)
      data
    end

    # Check if storage exists 
    # 
    # @param request GetIsStorageExistRequest
    # @return [Array<(StorageExistResponse, Fixnum, Hash)>]
    # StorageExistResponse data, response status code and response headers
    private def get_is_storage_exist_with_http_info(request)
      unless request.is_a? GetIsStorageExistRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.get_is_storage_exist ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        raise ArgumentError, 'Missing the required parameter name when calling StorageApi.get_is_storage_exist'
      end
      # resource path
      local_var_path = '/storage/{name}/exist'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'StorageExistResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#get_is_storage_exist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get the file's versions list 
    # 
	# @param request GetListFileVersionsRequest
    # @return [FileVersionsResponse]
    def get_list_file_versions(request)
      data, _status_code, _headers = get_list_file_versions_with_http_info(request)
      data
    end

    # Get the file&#39;s versions list 
    # 
    # @param request GetListFileVersionsRequest
    # @return [Array<(FileVersionsResponse, Fixnum, Hash)>]
    # FileVersionsResponse data, response status code and response headers
    private def get_list_file_versions_with_http_info(request)
      unless request.is_a? GetListFileVersionsRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.get_list_file_versions ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && request.path.nil?
        raise ArgumentError, 'Missing the required parameter path when calling StorageApi.get_list_file_versions'
      end
      # resource path
      local_var_path = '/storage/version'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('path')] = request.path
      query_params[downcase_first_letter('path')] = request.path unless request.path.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'FileVersionsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#get_list_file_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get the file listing of a specific folder 
    # 
	# @param request GetListFilesRequest
    # @return [FilesResponse]
    def get_list_files(request)
      data, _status_code, _headers = get_list_files_with_http_info(request)
      data
    end

    # Get the file listing of a specific folder 
    # 
    # @param request GetListFilesRequest
    # @return [Array<(FilesResponse, Fixnum, Hash)>]
    # FilesResponse data, response status code and response headers
    private def get_list_files_with_http_info(request)
      unless request.is_a? GetListFilesRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.get_list_files ...'
      end
      # resource path
      local_var_path = '/storage/folder'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('path')] = request.path unless request.path.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'FilesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#get_list_files\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Move a specific file 
    # 
	# @param request PostMoveFileRequest
    # @return [MoveFileResponse]
    def post_move_file(request)
      data, _status_code, _headers = post_move_file_with_http_info(request)
      data
    end

    # Move a specific file 
    # 
    # @param request PostMoveFileRequest
    # @return [Array<(MoveFileResponse, Fixnum, Hash)>]
    # MoveFileResponse data, response status code and response headers
    private def post_move_file_with_http_info(request)
      unless request.is_a? PostMoveFileRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.post_move_file ...'
      end
      # verify the required parameter 'src' is set
      if @api_client.config.client_side_validation && request.src.nil?
        raise ArgumentError, 'Missing the required parameter src when calling StorageApi.post_move_file'
      end
      # verify the required parameter 'dest' is set
      if @api_client.config.client_side_validation && request.dest.nil?
        raise ArgumentError, 'Missing the required parameter dest when calling StorageApi.post_move_file'
      end
      # resource path
      local_var_path = '/storage/file'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('src')] = request.src
      query_params[downcase_first_letter('dest')] = request.dest
      query_params[downcase_first_letter('src')] = request.src unless request.src.nil?
      query_params[downcase_first_letter('dest')] = request.dest unless request.dest.nil?
      query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('destStorage')] = request.dest_storage unless request.dest_storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'MoveFileResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#post_move_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Move a specific folder 
    # 
	# @param request PostMoveFolderRequest
    # @return [MoveFolderResponse]
    def post_move_folder(request)
      data, _status_code, _headers = post_move_folder_with_http_info(request)
      data
    end

    # Move a specific folder 
    # 
    # @param request PostMoveFolderRequest
    # @return [Array<(MoveFolderResponse, Fixnum, Hash)>]
    # MoveFolderResponse data, response status code and response headers
    private def post_move_folder_with_http_info(request)
      unless request.is_a? PostMoveFolderRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.post_move_folder ...'
      end
      # verify the required parameter 'src' is set
      if @api_client.config.client_side_validation && request.src.nil?
        raise ArgumentError, 'Missing the required parameter src when calling StorageApi.post_move_folder'
      end
      # verify the required parameter 'dest' is set
      if @api_client.config.client_side_validation && request.dest.nil?
        raise ArgumentError, 'Missing the required parameter dest when calling StorageApi.post_move_folder'
      end
      # resource path
      local_var_path = '/storage/folder'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('src')] = request.src
      query_params[downcase_first_letter('dest')] = request.dest
      query_params[downcase_first_letter('src')] = request.src unless request.src.nil?
      query_params[downcase_first_letter('dest')] = request.dest unless request.dest.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('destStorage')] = request.dest_storage unless request.dest_storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'MoveFolderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#post_move_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Copy a specific file 
    # 
	# @param request PutCopyRequest
    # @return [CopyFileResponse]
    def put_copy(request)
      data, _status_code, _headers = put_copy_with_http_info(request)
      data
    end

    # Copy a specific file 
    # 
    # @param request PutCopyRequest
    # @return [Array<(CopyFileResponse, Fixnum, Hash)>]
    # CopyFileResponse data, response status code and response headers
    private def put_copy_with_http_info(request)
      unless request.is_a? PutCopyRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.put_copy ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && request.path.nil?
        raise ArgumentError, 'Missing the required parameter path when calling StorageApi.put_copy'
      end
      # verify the required parameter 'newdest' is set
      if @api_client.config.client_side_validation && request.newdest.nil?
        raise ArgumentError, 'Missing the required parameter newdest when calling StorageApi.put_copy'
      end
      # resource path
      local_var_path = '/storage/file'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('path')] = request.path
      query_params[downcase_first_letter('newdest')] = request.newdest



      query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('destStorage')] = request.dest_storage unless request.dest_storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'CopyFileResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#put_copy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Copy a folder 
    # 
	# @param request PutCopyFolderRequest
    # @return [CreateFolderResponse]
    def put_copy_folder(request)
      data, _status_code, _headers = put_copy_folder_with_http_info(request)
      data
    end

    # Copy a folder 
    # 
    # @param request PutCopyFolderRequest
    # @return [Array<(CreateFolderResponse, Fixnum, Hash)>]
    # CreateFolderResponse data, response status code and response headers
    private def put_copy_folder_with_http_info(request)
      unless request.is_a? PutCopyFolderRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.put_copy_folder ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && request.path.nil?
        raise ArgumentError, 'Missing the required parameter path when calling StorageApi.put_copy_folder'
      end
      # verify the required parameter 'newdest' is set
      if @api_client.config.client_side_validation && request.newdest.nil?
        raise ArgumentError, 'Missing the required parameter newdest when calling StorageApi.put_copy_folder'
      end
      # resource path
      local_var_path = '/storage/folder'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('path')] = request.path
      query_params[downcase_first_letter('newdest')] = request.newdest
      query_params[downcase_first_letter('path')] = request.path unless request.path.nil?
      query_params[downcase_first_letter('newdest')] = request.newdest unless request.newdest.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('destStorage')] = request.dest_storage unless request.dest_storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'CreateFolderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#put_copy_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Create the folder
    #
    # @param request PutCreateFolderRequest
    # @return [CreateFolderResponse]
    def put_create_folder(request)
      data, _status_code, _headers = put_create_folder_with_http_info(request)
      data
    end

    # Create the folder
    #
    # @param request PutCreateFolderRequest
    # @return [Array<(CreateFolderResponse, Fixnum, Hash)>]
    # CreateFolderResponse data, response status code and response headers
    private def put_create_folder_with_http_info(request)
      unless request.is_a? PutCreateFolderRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.put_create_folder ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && request.path.nil?
        raise ArgumentError, 'Missing the required parameter path when calling StorageApi.put_create_folder'
      end
      # resource path
      local_var_path = '/storage/folder'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('path')] = request.path


      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('destStorage')] = request.dest_storage unless request.dest_storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'CreateFolderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#put_create_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Upload a specific file 
    # 
	# @param request PutCreateRequest
    # @return [UploadResponse]
    def put_create(request)
      data, _status_code, _headers = put_create_with_http_info(request)
      data
    end

    # Upload a specific file 
    # 
    # @param request PutCreateRequest
    # @return [Array<(UploadResponse, Fixnum, Hash)>]
    # UploadResponse data, response status code and response headers
    private def put_create_with_http_info(request)
      unless request.is_a? PutCreateRequest
        raise ArgumentError, 'Incorrect request type'
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.put_create ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && request.path.nil?
        raise ArgumentError, 'Missing the required parameter path when calling StorageApi.put_create'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && request.file.nil?
        raise ArgumentError, 'Missing the required parameter file when calling StorageApi.put_create'
      end
      # resource path
      local_var_path = '/storage/file'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('path')] = request.path
      query_params[downcase_first_letter('path')] = request.path unless request.path.nil?
      query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('File')] = request.file

      request_token
      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: 'UploadResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: 
        StorageApi#put_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
     #
     # Helper method to convert first letter to downcase
     #
    private def downcase_first_letter(str)
      value = str[0].downcase + str[1..-1]
      value
    end
                 
     #
     # Gets a request token from server
     #
    private def request_token
      config = @api_client.config
      api_version = config.api_version
      config.api_version = ''
      request_url = "/oauth2/token"
      post_data = "grant_type=client_credentials" + "&client_id=" + config.api_key['app_sid'] + "&client_secret=" + config.api_key['api_key']
      data, status_code, header = @api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
      @api_client.config.access_token = data[:access_token]
      @api_client.config.api_version = api_version
      @api_client.config.refresh_token = data[:refresh_token]
    end
    
    # requires all files inside a directory from current dir
    # @param _dir can be relative path like '/lib' or "../lib"
    private def require_all(_dir)
      Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/*.rb"].each do |file|
        require file
      end
    end
  end
end