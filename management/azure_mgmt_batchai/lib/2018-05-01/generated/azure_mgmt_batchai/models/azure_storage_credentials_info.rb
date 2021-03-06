# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # Azure storage account credentials.
    #
    class AzureStorageCredentialsInfo

      include MsRestAzure

      # @return [String] Account key. Storage account key. One of accountKey or
      # accountKeySecretReference must be specified.
      attr_accessor :account_key

      # @return [KeyVaultSecretReference] Account key secret reference.
      # Information about KeyVault secret storing the storage account key. One
      # of accountKey or accountKeySecretReference must be specified.
      attr_accessor :account_key_secret_reference


      #
      # Mapper for AzureStorageCredentialsInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureStorageCredentialsInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureStorageCredentialsInfo',
            model_properties: {
              account_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accountKey',
                type: {
                  name: 'String'
                }
              },
              account_key_secret_reference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accountKeySecretReference',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultSecretReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
