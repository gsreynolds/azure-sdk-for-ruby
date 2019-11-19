# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Peering::Mgmt::V2019_08_01_preview
  module Models
    #
    # The properties that define a BGP session.
    #
    class BgpSession

      include MsRestAzure

      # @return [String] The IPv4 prefix that contains both ends' IPv4
      # addresses.
      attr_accessor :session_prefix_v4

      # @return [String] The IPv6 prefix that contains both ends' IPv6
      # addresses.
      attr_accessor :session_prefix_v6

      # @return [String] The IPv4 session address on Microsoft's end.
      attr_accessor :microsoft_session_ipv4address

      # @return [String] The IPv6 session address on Microsoft's end.
      attr_accessor :microsoft_session_ipv6address

      # @return [String] The IPv4 session address on peer's end.
      attr_accessor :peer_session_ipv4address

      # @return [String] The IPv6 session address on peer's end.
      attr_accessor :peer_session_ipv6address

      # @return [SessionStateV4] The state of the IPv4 session. Possible values
      # include: 'None', 'Idle', 'Connect', 'Active', 'OpenSent',
      # 'OpenConfirm', 'OpenReceived', 'Established', 'PendingAdd',
      # 'PendingUpdate', 'PendingRemove'
      attr_accessor :session_state_v4

      # @return [SessionStateV6] The state of the IPv6 session. Possible values
      # include: 'None', 'Idle', 'Connect', 'Active', 'OpenSent',
      # 'OpenConfirm', 'OpenReceived', 'Established', 'PendingAdd',
      # 'PendingUpdate', 'PendingRemove'
      attr_accessor :session_state_v6

      # @return [Integer] The maximum number of prefixes advertised over the
      # IPv4 session.
      attr_accessor :max_prefixes_advertised_v4

      # @return [Integer] The maximum number of prefixes advertised over the
      # IPv6 session.
      attr_accessor :max_prefixes_advertised_v6

      # @return [String] The MD5 authentication key of the session.
      attr_accessor :md5authentication_key


      #
      # Mapper for BgpSession class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BgpSession',
          type: {
            name: 'Composite',
            class_name: 'BgpSession',
            model_properties: {
              session_prefix_v4: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sessionPrefixV4',
                type: {
                  name: 'String'
                }
              },
              session_prefix_v6: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sessionPrefixV6',
                type: {
                  name: 'String'
                }
              },
              microsoft_session_ipv4address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'microsoftSessionIPv4Address',
                type: {
                  name: 'String'
                }
              },
              microsoft_session_ipv6address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'microsoftSessionIPv6Address',
                type: {
                  name: 'String'
                }
              },
              peer_session_ipv4address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'peerSessionIPv4Address',
                type: {
                  name: 'String'
                }
              },
              peer_session_ipv6address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'peerSessionIPv6Address',
                type: {
                  name: 'String'
                }
              },
              session_state_v4: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sessionStateV4',
                type: {
                  name: 'String'
                }
              },
              session_state_v6: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sessionStateV6',
                type: {
                  name: 'String'
                }
              },
              max_prefixes_advertised_v4: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxPrefixesAdvertisedV4',
                type: {
                  name: 'Number'
                }
              },
              max_prefixes_advertised_v6: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxPrefixesAdvertisedV6',
                type: {
                  name: 'Number'
                }
              },
              md5authentication_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'md5AuthenticationKey',
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