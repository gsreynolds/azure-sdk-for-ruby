# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class PerformanceCounterConfiguration

      include MsRestAzure

      # @return [String]
      attr_accessor :name

      # @return [String]
      attr_accessor :sampling_period

      # @return [String]
      attr_accessor :instance


      #
      # Mapper for PerformanceCounterConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PerformanceCounterConfiguration',
          type: {
            name: 'Composite',
            class_name: 'PerformanceCounterConfiguration',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              sampling_period: {
                client_side_validation: true,
                required: true,
                serialized_name: 'samplingPeriod',
                type: {
                  name: 'String'
                }
              },
              instance: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instance',
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