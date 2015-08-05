# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.


module Azure::ARM::Compute
  module Models
    #
    # The instance view of a virtual machine extension.
    #
    class VirtualMachineExtensionInstanceView

      include MsRestAzure

      # @return [String] Gets or sets the virtual machine extension name.
      attr_accessor :name

      # @return [String] Gets or sets the full type of the extension handler
      # which includes both publisher and type.
      attr_accessor :type

      # @return [String] Gets or sets the type version of the extension
      # handler.
      attr_accessor :type_handler_version

      # @return [Array<InstanceViewStatus>] Gets or sets the resource status
      # information.
      attr_accessor :substatuses

      # @return [Array<InstanceViewStatus>] Gets or sets the resource status
      # information.
      attr_accessor :statuses

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @substatuses.each{ |e| e.validate if e.respond_to?(:validate) } unless @substatuses.nil?
        @statuses.each{ |e| e.validate if e.respond_to?(:validate) } unless @statuses.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.type
        output_object['type'] = serialized_property unless serialized_property.nil?

        serialized_property = object.type_handler_version
        output_object['typeHandlerVersion'] = serialized_property unless serialized_property.nil?

        serialized_property = object.substatuses
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = InstanceViewStatus.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['substatuses'] = serialized_property unless serialized_property.nil?

        serialized_property = object.statuses
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element1|
            unless element1.nil?
              element1 = InstanceViewStatus.serialize_object(element1)
            end
            serializedArray.push(element1)
          end
          serialized_property = serializedArray
        end
        output_object['statuses'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachineExtensionInstanceView] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualMachineExtensionInstanceView.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['type']
        output_object.type = deserialized_property

        deserialized_property = object['typeHandlerVersion']
        output_object.type_handler_version = deserialized_property

        deserialized_property = object['substatuses']
        unless deserialized_property.nil?
          deserializedArray = [];
          deserialized_property.each do |element2|
            unless element2.nil?
              element2 = InstanceViewStatus.deserialize_object(element2)
            end
            deserializedArray.push(element2);
          end
          deserialized_property = deserializedArray;
        end
        output_object.substatuses = deserialized_property

        deserialized_property = object['statuses']
        unless deserialized_property.nil?
          deserializedArray = [];
          deserialized_property.each do |element3|
            unless element3.nil?
              element3 = InstanceViewStatus.deserialize_object(element3)
            end
            deserializedArray.push(element3);
          end
          deserialized_property = deserializedArray;
        end
        output_object.statuses = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
