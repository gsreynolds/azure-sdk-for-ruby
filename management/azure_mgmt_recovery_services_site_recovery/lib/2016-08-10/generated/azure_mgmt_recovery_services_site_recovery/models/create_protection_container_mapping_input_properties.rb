# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Configure pairing input properties.
    #
    class CreateProtectionContainerMappingInputProperties

      include MsRestAzure

      # @return [String] The target unique protection container name.
      attr_accessor :target_protection_container_id

      # @return [String] Applicable policy.
      attr_accessor :policy_id

      # @return [ReplicationProviderSpecificContainerMappingInput] Provider
      # specific input for pairing.
      attr_accessor :provider_specific_input


      #
      # Mapper for CreateProtectionContainerMappingInputProperties class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreateProtectionContainerMappingInputProperties',
          type: {
            name: 'Composite',
            class_name: 'CreateProtectionContainerMappingInputProperties',
            model_properties: {
              target_protection_container_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetProtectionContainerId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyId',
                type: {
                  name: 'String'
                }
              },
              provider_specific_input: {
                client_side_validation: true,
                required: false,
                serialized_name: 'providerSpecificInput',
                type: {
                  name: 'Composite',
                  class_name: 'ReplicationProviderSpecificContainerMappingInput'
                }
              }
            }
          }
        }
      end
    end
  end
end
