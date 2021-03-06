# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Azure IaaS VM workload-specific job task details.
    #
    class AzureIaaSVMJobTaskDetails

      include MsRestAzure

      # @return [String] The task display name.
      attr_accessor :task_id

      # @return [DateTime] The start time.
      attr_accessor :start_time

      # @return [DateTime] The end time.
      attr_accessor :end_time

      # @return [String] The instanceId.
      attr_accessor :instance_id

      # @return [Duration] Time elapsed for task.
      attr_accessor :duration

      # @return [String] The status.
      attr_accessor :status

      # @return [Float] Progress of the task.
      attr_accessor :progress_percentage

      # @return [String] Details about execution of the task.
      # eg: number of bytes transferred etc
      attr_accessor :task_execution_details


      #
      # Mapper for AzureIaaSVMJobTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureIaaSVMJobTaskDetails',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSVMJobTaskDetails',
            model_properties: {
              task_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'taskId',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              instance_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instanceId',
                type: {
                  name: 'String'
                }
              },
              duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'duration',
                type: {
                  name: 'TimeSpan'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              progress_percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'progressPercentage',
                type: {
                  name: 'Double'
                }
              },
              task_execution_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'taskExecutionDetails',
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
