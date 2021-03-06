# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_03_01_preview
  module Models
    #
    # Result of listing ExternalBillingAccount definitions. It contains a list
    # of available ExternalBillingAccount definitions in the scope provided.
    #
    class ExternalBillingAccountDefinitionListResult

      include MsRestAzure

      # @return [Array<ExternalBillingAccountDefinition>] The list of
      # ExternalBillingAccount definitions.
      attr_accessor :value


      #
      # Mapper for ExternalBillingAccountDefinitionListResult class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExternalBillingAccountDefinitionListResult',
          type: {
            name: 'Composite',
            class_name: 'ExternalBillingAccountDefinitionListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExternalBillingAccountDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExternalBillingAccountDefinition'
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
