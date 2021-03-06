# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # The event data for a Job output.
    #
    class MediaJobOutput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.JobOutputAsset"] = "MediaJobOutputAsset"

      def initialize
        @odatatype = "MediaJobOutput"
      end

      attr_accessor :odatatype

      # @return [MediaJobError] Gets the Job output error.
      attr_accessor :error

      # @return [String] Gets the Job output label.
      attr_accessor :label

      # @return [Integer] Gets the Job output progress.
      attr_accessor :progress

      # @return [MediaJobState] Gets the Job output state. Possible values
      # include: 'Canceled', 'Canceling', 'Error', 'Finished', 'Processing',
      # 'Queued', 'Scheduled'
      attr_accessor :state


      #
      # Mapper for MediaJobOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MediaJobOutput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'MediaJobOutput',
            class_name: 'MediaJobOutput',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'MediaJobError'
                }
              },
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              progress: {
                client_side_validation: true,
                required: true,
                serialized_name: 'progress',
                type: {
                  name: 'Number'
                }
              },
              state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'MediaJobState'
                }
              }
            }
          }
        }
      end
    end
  end
end
