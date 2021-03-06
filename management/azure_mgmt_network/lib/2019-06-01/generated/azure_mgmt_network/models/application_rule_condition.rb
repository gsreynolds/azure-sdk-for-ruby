# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # Rule condition of type application.
    #
    class ApplicationRuleCondition < FirewallPolicyRuleCondition

      include MsRestAzure


      def initialize
        @ruleConditionType = "ApplicationRuleCondition"
      end

      attr_accessor :ruleConditionType

      # @return [Array<String>] List of source IP addresses for this rule.
      attr_accessor :source_addresses

      # @return [Array<String>] List of destination IP addresses or Service
      # Tags.
      attr_accessor :destination_addresses

      # @return [Array<FirewallPolicyRuleConditionApplicationProtocol>] Array
      # of Application Protocols.
      attr_accessor :protocols

      # @return [Array<String>] List of FQDNs for this rule condition.
      attr_accessor :target_fqdns

      # @return [Array<String>] List of FQDN Tags for this rule condition.
      attr_accessor :fqdn_tags


      #
      # Mapper for ApplicationRuleCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationRuleCondition',
          type: {
            name: 'Composite',
            class_name: 'ApplicationRuleCondition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              ruleConditionType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleConditionType',
                type: {
                  name: 'String'
                }
              },
              source_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              destination_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              protocols: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocols',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FirewallPolicyRuleConditionApplicationProtocolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FirewallPolicyRuleConditionApplicationProtocol'
                      }
                  }
                }
              },
              target_fqdns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetFqdns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              fqdn_tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fqdnTags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
