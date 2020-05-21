# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Client or app secret used in IdentityProviders, Aad, OpenID or OAuth.
    #
    class PortalSettingValidationKeyContract

      include MsRestAzure

      # @return [String] This is secret value of the validation key in portal
      # settings.
      attr_accessor :validation_key


      #
      # Mapper for PortalSettingValidationKeyContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PortalSettingValidationKeyContract',
          type: {
            name: 'Composite',
            class_name: 'PortalSettingValidationKeyContract',
            model_properties: {
              validation_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validationKey',
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