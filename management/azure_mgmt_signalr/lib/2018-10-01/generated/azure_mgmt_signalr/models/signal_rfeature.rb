# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2018_10_01
  module Models
    #
    # Feature of a SignalR resource, which controls the SignalR runtime
    # behavior.
    #
    class SignalRFeature

      include MsRestAzure

      # @return [String] Kind of feature. Required. Default value:
      # 'ServiceMode' .
      attr_accessor :flag

      # @return [String] Value of the feature flag. See Azure SignalR service
      # document https://docs.microsoft.com/en-us/azure/azure-signalr/ for
      # allowed values.
      attr_accessor :value

      # @return [Hash{String => String}] Optional properties related to this
      # feature.
      attr_accessor :properties


      #
      # Mapper for SignalRFeature class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SignalRFeature',
          type: {
            name: 'Composite',
            class_name: 'SignalRFeature',
            model_properties: {
              flag: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'flag',
                default_value: 'ServiceMode',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                constraints: {
                  MaxLength: 128,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
