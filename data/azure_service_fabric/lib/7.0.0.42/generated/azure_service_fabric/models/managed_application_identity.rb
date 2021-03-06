# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Describes a managed application identity.
    #
    class ManagedApplicationIdentity

      include MsRestAzure

      # @return [String] The name of the identity.
      attr_accessor :name

      # @return [String] The identity's PrincipalId.
      attr_accessor :principal_id


      #
      # Mapper for ManagedApplicationIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedApplicationIdentity',
          type: {
            name: 'Composite',
            class_name: 'ManagedApplicationIdentity',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              principal_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PrincipalId',
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
