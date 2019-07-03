# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # The virtual network properties.
    #
    class VirtualNetworkProfile

      include MsRestAzure

      # @return [String] The ID of the virtual network.
      attr_accessor :id

      # @return [String] The name of the subnet.
      attr_accessor :subnet


      #
      # Mapper for VirtualNetworkProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkProfile',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnet',
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