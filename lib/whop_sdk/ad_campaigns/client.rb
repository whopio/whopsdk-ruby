# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists the ad campaigns for an account, with stats over the requested window.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestStatus, nil] :status
      # @option params [String, nil] :query
      # @option params [Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestOrder, nil] :order
      # @option params [Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestDirection, nil] :direction
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      # @option params [String, nil] :stats_from
      # @option params [String, nil] :stats_to
      # @option params [String, nil] :time_zone
      # @option params [Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestAttributionModel, nil] :attribution_model
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.ad_campaigns.list
      #
      # @return [Whop_sdk::AdCampaigns::Types::ListAdCampaignsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
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
            path: "ad_campaigns",
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
            parsed_response = Whop_sdk::AdCampaigns::Types::ListAdCampaignsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Creates an ad campaign for an account.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.ad_campaigns.create(
      #     objective: "awareness",
      #     platform: "meta",
      #     title: "Now hiring mobile detailers — Austin"
      #   )
      #
      # @return [Whop_sdk::Types::AdCampaign]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ad_campaigns",
          body: Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AdCampaign.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single ad campaign with stats over the requested window.
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
      # @option params [Whop_sdk::AdCampaigns::Types::RetrieveAdCampaignsRequestAttributionModel, nil] :attribution_model
      #
      # @example
      #   client.ad_campaigns.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::AdCampaign]
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
          path: "ad_campaigns/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::AdCampaign.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes an ad campaign and archives it on the ad platform (cascades to ad groups and ads).
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
      #   client.ad_campaigns.delete(id: "id")
      #
      # @return [Whop_sdk::AdCampaigns::Types::DeleteAdCampaignsResponse]
      def delete(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "ad_campaigns/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::AdCampaigns::Types::DeleteAdCampaignsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates an ad campaign's editable fields (title, budget, schedule, bid strategy, special ad categories, and,
      # before launch, budget type and budget optimization), and launches a draft campaign by setting status to active.
      # Objective and desired cost per result are fixed at creation and cannot be changed.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.ad_campaigns.update(id: "id")
      #
      # @return [Whop_sdk::Types::AdCampaign]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "ad_campaigns/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::AdCampaign.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates copies of the campaign in `duplicating` status and returns them; each copy transitions to `draft` once
      # duplication completes. Poll each returned campaign until it leaves `duplicating` — a copy that could not be
      # completed is deleted and returns 404.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::AdCampaigns::Types::DuplicateAdCampaignsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.ad_campaigns.duplicate(id: "id")
      #
      # @return [Whop_sdk::AdCampaigns::Types::DuplicateAdCampaignsResponse]
      def duplicate(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::AdCampaigns::Types::DuplicateAdCampaignsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ad_campaigns/#{URI.encode_uri_component(params[:id].to_s)}/duplicate",
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
          Whop_sdk::AdCampaigns::Types::DuplicateAdCampaignsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Pauses an active ad campaign.
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
      #   client.ad_campaigns.pause(id: "id")
      #
      # @return [Whop_sdk::Types::AdCampaign]
      def pause(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ad_campaigns/#{URI.encode_uri_component(params[:id].to_s)}/pause",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AdCampaign.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retries billing for an ad campaign whose payment previously failed.
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
      #   client.ad_campaigns.retry_payment(id: "id")
      #
      # @return [Whop_sdk::Types::AdCampaign]
      def retry_payment(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ad_campaigns/#{URI.encode_uri_component(params[:id].to_s)}/retry_payment",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AdCampaign.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Resumes a paused ad campaign.
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
      #   client.ad_campaigns.unpause(id: "id")
      #
      # @return [Whop_sdk::Types::AdCampaign]
      def unpause(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ad_campaigns/#{URI.encode_uri_component(params[:id].to_s)}/unpause",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AdCampaign.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
