# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    #
    class WorkflowFilter

      include MsRestAzure

      # @return [WorkflowState] The state of workflows. Possible values
      # include: 'NotSpecified', 'Completed', 'Enabled', 'Disabled',
      # 'Deleted', 'Suspended'
      attr_accessor :state


      #
      # Mapper for WorkflowFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkflowFilter',
          type: {
            name: 'Composite',
            class_name: 'WorkflowFilter',
            model_properties: {
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'WorkflowState'
                }
              }
            }
          }
        }
      end
    end
  end
end