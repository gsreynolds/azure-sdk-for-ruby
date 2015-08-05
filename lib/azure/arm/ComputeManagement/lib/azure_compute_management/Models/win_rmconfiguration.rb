# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.


module Azure::ARM::Compute
  module Models
    #
    # Describes Windows Remote Management configuration of the VM
    #
    class WinRMConfiguration

      include MsRestAzure

      # @return [Array<WinRMListener>] Gets or sets the list of Windows Remote
      # Management listeners
      attr_accessor :listeners

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @listeners.each{ |e| e.validate if e.respond_to?(:validate) } unless @listeners.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.listeners
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = WinRMListener.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['listeners'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [WinRMConfiguration] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = WinRMConfiguration.new

        deserialized_property = object['listeners']
        unless deserialized_property.nil?
          deserializedArray = [];
          deserialized_property.each do |element1|
            unless element1.nil?
              element1 = WinRMListener.deserialize_object(element1)
            end
            deserializedArray.push(element1);
          end
          deserialized_property = deserializedArray;
        end
        output_object.listeners = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
