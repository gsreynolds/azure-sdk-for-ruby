# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevSpaces::Mgmt::V2018_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class ControllerConnectionDetails

      include MsRestAzure

      # @return [String] Authentication key for communicating with services.
      attr_accessor :auth_key

      # @return [String] Workspace storage account name.
      attr_accessor :workspace_storage_account_name

      # @return [String] Workspace storage account SAS token.
      attr_accessor :workspace_storage_sas_token

      # @return [OrchestratorSpecificConnectionDetails]
      attr_accessor :orchestrator_specific_connection_details


      #
      # Mapper for ControllerConnectionDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ControllerConnectionDetails',
          type: {
            name: 'Composite',
            class_name: 'ControllerConnectionDetails',
            model_properties: {
              auth_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'authKey',
                type: {
                  name: 'String'
                }
              },
              workspace_storage_account_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'workspaceStorageAccountName',
                type: {
                  name: 'String'
                }
              },
              workspace_storage_sas_token: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'workspaceStorageSasToken',
                type: {
                  name: 'String'
                }
              },
              orchestrator_specific_connection_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'orchestratorSpecificConnectionDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'OrchestratorSpecificConnectionDetails',
                  class_name: 'OrchestratorSpecificConnectionDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end