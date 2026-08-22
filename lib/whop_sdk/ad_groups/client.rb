# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists ad groups for the account, newest first.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [String, nil] :ad_campaign_id
      # @option params [String, nil] :ad_campaign_ids
      # @option params [Whop_sdk::AdGroups::Types::ListAdGroupsRequestStatus, nil] :status
      # @option params [String, nil] :query
      # @option params [Whop_sdk::AdGroups::Types::ListAdGroupsRequestOrder, nil] :order
      # @option params [Whop_sdk::AdGroups::Types::ListAdGroupsRequestDirection, nil] :direction
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      # @option params [String, nil] :stats_from
      # @option params [String, nil] :stats_to
      # @option params [String, nil] :time_zone
      # @option params [Whop_sdk::AdGroups::Types::ListAdGroupsRequestAttributionModel, nil] :attribution_model
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.ad_groups.list(ad_campaign_ids: ["adcamp_xxxxxxxxxxxxxx"])
      #
      # @return [Whop_sdk::AdGroups::Types::ListAdGroupsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["ad_campaign_id"] = params[:ad_campaign_id] if params.key?(:ad_campaign_id)
        query_params["ad_campaign_ids"] = params[:ad_campaign_ids] if params.key?(:ad_campaign_ids)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["query"] = params[:query] if params.key?(:query)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["stats_from"] = params[:stats_from] if params.key?(:stats_from)
        query_params["stats_to"] = params[:stats_to] if params.key?(:stats_to)
        query_params["time_zone"] = params[:time_zone] if params.key?(:time_zone)
        query_params["attribution_model"] = params[:attribution_model] if params.key?(:attribution_model)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "ad_groups",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = Whop_sdk::AdGroups::Types::ListAdGroupsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Creates an ad group (ad set) in a campaign.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::AdGroups::Types::CreateAdGroupsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.ad_groups.create(ad_campaign_id: "adcamp_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::AdGroup]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ad_groups",
          body: Whop_sdk::AdGroups::Types::CreateAdGroupsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AdGroup.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Estimates how many people a draft targeting spec can reach, before an ad group is created. The body takes the
      # same targeting fields as creating an ad group — `regions`, `demographics`, `detailed_targeting`, `audiences`,
      # `languages`, and `devices` — and nothing is persisted.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::AdGroups::Types::EstimateReachAdGroupsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.ad_groups.estimate_reach(platform: "meta")
      #
      # @return [Whop_sdk::Types::ReachEstimate]
      def estimate_reach(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ad_groups/estimate_reach",
          body: Whop_sdk::AdGroups::Types::EstimateReachAdGroupsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::ReachEstimate.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Searches the ad platform's targeting taxonomy for options to target an ad group with. Each result comes back in
      # the exact shape the ad-group body accepts for its `type`, so it can be used in `detailed_targeting`, `regions`,
      # or `languages` as-is. A blank `query` browses the small fixed lists (behaviors, browse demographic categories,
      # languages); interests, work employers, job titles, schools, majors, and locations need a search term.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsRequestPlatform] :platform
      # @option params [String, nil] :query
      # @option params [Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsRequestTypesItem, nil] :types
      # @option params [Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsRequestLocationTypesItem, nil] :location_types
      # @option params [String, nil] :country
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.ad_groups.search_targeting_options(platform: "meta")
      #
      # @return [Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsResponse]
      def search_targeting_options(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["platform"] = params[:platform] if params.key?(:platform)
        query_params["query"] = params[:query] if params.key?(:query)
        query_params["types"] = params[:types] if params.key?(:types)
        query_params["location_types"] = params[:location_types] if params.key?(:location_types)
        query_params["country"] = params[:country] if params.key?(:country)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "ad_groups/targeting_options",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single ad group.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :stats_from
      # @option params [String, nil] :stats_to
      # @option params [String, nil] :time_zone
      # @option params [Whop_sdk::AdGroups::Types::RetrieveAdGroupsRequestAttributionModel, nil] :attribution_model
      #
      # @example
      #   client.ad_groups.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::AdGroup]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["stats_from"] = params[:stats_from] if params.key?(:stats_from)
        query_params["stats_to"] = params[:stats_to] if params.key?(:stats_to)
        query_params["time_zone"] = params[:time_zone] if params.key?(:time_zone)
        query_params["attribution_model"] = params[:attribution_model] if params.key?(:attribution_model)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "ad_groups/#{URI.encode_uri_component(params[:id].to_s)}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AdGroup.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes an ad group.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.ad_groups.delete(id: "id")
      #
      # @return [Whop_sdk::AdGroups::Types::DeleteAdGroupsResponse]
      def delete(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "ad_groups/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::AdGroups::Types::DeleteAdGroupsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates an ad group's editable fields. Only the keys you send are changed.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::AdGroups::Types::UpdateAdGroupsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.ad_groups.update(id: "id")
      #
      # @return [Whop_sdk::Types::AdGroup]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::AdGroups::Types::UpdateAdGroupsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "ad_groups/#{URI.encode_uri_component(params[:id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AdGroup.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates copies of the ad group in `duplicating` status and returns them — into its own campaign, or into
      # target_ad_campaign_id (which must belong to the same account and be compatible with the ad group's targeting and
      # goals); each copy transitions to its final status (matching the source's active/paused state) once duplication
      # completes. Poll each returned ad group until it leaves `duplicating` — a copy that could not be completed is
      # deleted and returns 404.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::AdGroups::Types::DuplicateAdGroupsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.ad_groups.duplicate(id: "id")
      #
      # @return [Whop_sdk::AdGroups::Types::DuplicateAdGroupsResponse]
      def duplicate(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::AdGroups::Types::DuplicateAdGroupsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ad_groups/#{URI.encode_uri_component(params[:id].to_s)}/duplicate",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::AdGroups::Types::DuplicateAdGroupsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Pauses delivery of an ad group.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.ad_groups.pause(id: "id")
      #
      # @return [Whop_sdk::Types::AdGroup]
      def pause(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ad_groups/#{URI.encode_uri_component(params[:id].to_s)}/pause",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AdGroup.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Resumes delivery of a paused ad group.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.ad_groups.unpause(id: "id")
      #
      # @return [Whop_sdk::Types::AdGroup]
      def unpause(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ad_groups/#{URI.encode_uri_component(params[:id].to_s)}/unpause",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AdGroup.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
