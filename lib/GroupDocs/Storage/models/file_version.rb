
require 'date'

module GroupDocsStorageSdk
#
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="FileVersion.rb">
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


  class FileVersion
    attr_accessor :name

    attr_accessor :is_folder

    attr_accessor :modified_date

    attr_accessor :size

    attr_accessor :path

    attr_accessor :is_directory

    attr_accessor :version_id

    attr_accessor :is_latest


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'is_folder' => :'IsFolder',
        :'modified_date' => :'ModifiedDate',
        :'size' => :'Size',
        :'path' => :'Path',
        :'is_directory' => :'IsDirectory',
        :'version_id' => :'VersionId',
        :'is_latest' => :'IsLatest'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'is_folder' => :'BOOLEAN',
        :'modified_date' => :'DateTime',
        :'size' => :'Integer',
        :'path' => :'String',
        :'is_directory' => :'BOOLEAN',
        :'version_id' => :'String',
        :'is_latest' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'IsFolder')
        self.is_folder = attributes[:'IsFolder']
      end

      if attributes.has_key?(:'ModifiedDate')
        self.modified_date = attributes[:'ModifiedDate']
      end

      if attributes.has_key?(:'Size')
        self.size = attributes[:'Size']
      end

      if attributes.has_key?(:'Path')
        self.path = attributes[:'Path']
      end

      if attributes.has_key?(:'IsDirectory')
        self.is_directory = attributes[:'IsDirectory']
      end

      if attributes.has_key?(:'VersionId')
        self.version_id = attributes[:'VersionId']
      end

      if attributes.has_key?(:'IsLatest')
        self.is_latest = attributes[:'IsLatest']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_folder.nil?
        invalid_properties.push("invalid value for 'is_folder', is_folder cannot be nil.")
      end

      if @modified_date.nil?
        invalid_properties.push("invalid value for 'modified_date', modified_date cannot be nil.")
      end

      if @size.nil?
        invalid_properties.push("invalid value for 'size', size cannot be nil.")
      end

      if @is_directory.nil?
        invalid_properties.push("invalid value for 'is_directory', is_directory cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_folder.nil?
      return false if @modified_date.nil?
      return false if @size.nil?
      return false if @is_directory.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          is_folder == o.is_folder &&
          modified_date == o.modified_date &&
          size == o.size &&
          path == o.path &&
          is_directory == o.is_directory &&
          version_id == o.version_id &&
          is_latest == o.is_latest
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, is_folder, modified_date, size, path, is_directory, version_id, is_latest].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key].downcase].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key].downcase].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key].downcase].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key].downcase]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end
      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Time.at(/\d/.match(value)[0].to_f).to_datetime
      when :Date
        Time.at(/\d/.match(value)[0].to_f).to_date
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = GroupDocsStorageSdk.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end