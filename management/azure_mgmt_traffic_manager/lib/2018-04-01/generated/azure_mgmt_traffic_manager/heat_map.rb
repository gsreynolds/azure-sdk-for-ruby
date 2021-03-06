# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2018_04_01
  #
  # HeatMap
  #
  class HeatMap
    include MsRestAzure

    #
    # Creates and initializes a new instance of the HeatMap class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [TrafficManagerManagementClient] reference to the TrafficManagerManagementClient
    attr_reader :client

    #
    # Gets latest heatmap for Traffic Manager profile.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param top_left [Array<Float>] The top left latitude,longitude pair of the
    # rectangular viewport to query for.
    # @param bot_right [Array<Float>] The bottom right latitude,longitude pair of
    # the rectangular viewport to query for.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [HeatMapModel] operation results.
    #
    def get(resource_group_name, profile_name, top_left:nil, bot_right:nil, custom_headers:nil)
      response = get_async(resource_group_name, profile_name, top_left:top_left, bot_right:bot_right, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets latest heatmap for Traffic Manager profile.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param top_left [Array<Float>] The top left latitude,longitude pair of the
    # rectangular viewport to query for.
    # @param bot_right [Array<Float>] The bottom right latitude,longitude pair of
    # the rectangular viewport to query for.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, profile_name, top_left:nil, bot_right:nil, custom_headers:nil)
      get_async(resource_group_name, profile_name, top_left:top_left, bot_right:bot_right, custom_headers:custom_headers).value!
    end

    #
    # Gets latest heatmap for Traffic Manager profile.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param top_left [Array<Float>] The top left latitude,longitude pair of the
    # rectangular viewport to query for.
    # @param bot_right [Array<Float>] The bottom right latitude,longitude pair of
    # the rectangular viewport to query for.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, profile_name, top_left:nil, bot_right:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      heat_map_type = 'default'
      fail ArgumentError, "'top_left' should satisfy the constraint - 'MaxItems': '2'" if !top_left.nil? && top_left.length > 2
      fail ArgumentError, "'top_left' should satisfy the constraint - 'MinItems': '2'" if !top_left.nil? && top_left.length < 2
      fail ArgumentError, "'bot_right' should satisfy the constraint - 'MaxItems': '2'" if !bot_right.nil? && bot_right.length > 2
      fail ArgumentError, "'bot_right' should satisfy the constraint - 'MinItems': '2'" if !bot_right.nil? && bot_right.length < 2
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficmanagerprofiles/{profileName}/heatMaps/{heatMapType}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'profileName' => profile_name,'heatMapType' => heat_map_type},
          query_params: {'topLeft' => top_left.nil? ? nil : top_left.join(','),'botRight' => bot_right.nil? ? nil : bot_right.join(','),'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::TrafficManager::Mgmt::V2018_04_01::Models::HeatMapModel.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
