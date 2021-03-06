# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_01_21
  module Models
    #
    # Class representing an data connection.
    #
    class DataConnection < ProxyResource

      include MsRestAzure


      def initialize
        @kind = "DataConnection"
      end

      attr_accessor :kind

      # @return [String] Resource location.
      attr_accessor :location


      #
      # Mapper for DataConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataConnection',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'kind',
            uber_parent: 'Resource',
            class_name: 'DataConnection',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
