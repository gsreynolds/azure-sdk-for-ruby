# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PowerBiDedicated::Mgmt::V2017_10_01
  module Models
    #
    # The checking result of capacity name availability.
    #
    class CheckCapacityNameAvailabilityResult

      include MsRestAzure

      # @return [Boolean] Indicator of availability of the capacity name.
      attr_accessor :name_available

      # @return [String] The reason of unavailability.
      attr_accessor :reason

      # @return [String] The detailed message of the request unavailability.
      attr_accessor :message


      #
      # Mapper for CheckCapacityNameAvailabilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckCapacityNameAvailabilityResult',
          type: {
            name: 'Composite',
            class_name: 'CheckCapacityNameAvailabilityResult',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
