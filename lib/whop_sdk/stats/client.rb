# frozen_string_literal: true

module Whop_sdk
  module Stats
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists every metric you can query, with its unit and the properties you can filter or break it down by.
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.stats.list
      #
      # @return [Whop_sdk::Stats::Types::ListStatsResponse]
      def list(request_options: {}, **_params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "stats",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Stats::Types::ListStatsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a metric as a time series of points for an account or user over a time range. The `market_prices`
      # metric is public and requires no authentication.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :metric
      # @option params [String, nil] :account_id
      # @option params [String, nil] :user_id
      # @option params [String] :from
      # @option params [String] :to
      # @option params [Whop_sdk::Stats::Types::RetrieveStatsRequestInterval, nil] :interval
      # @option params [String, nil] :breakdown_by
      # @option params [String, nil] :convert_to
      # @option params [String, nil] :currency
      # @option params [String, nil] :time_zone
      # @option params [String, nil] :payment_method
      # @option params [String, nil] :card_network
      # @option params [String, nil] :dispute_reason
      # @option params [String, nil] :source
      # @option params [String, nil] :hostname
      # @option params [String, nil] :page
      # @option params [String, nil] :device_type
      # @option params [String, nil] :country_code
      # @option params [String, nil] :event_name
      # @option params [Whop_sdk::Stats::Types::RetrieveStatsRequestEventType, nil] :event_type
      # @option params [String, nil] :custom_name
      # @option params [String, nil] :segment
      # @option params [String, nil] :category
      # @option params [String, nil] :merchant
      # @option params [String, nil] :fee_type
      # @option params [String, nil] :product
      # @option params [String, nil] :status
      # @option params [String, nil] :access_level
      # @option params [String, nil] :most_recent_action
      # @option params [String, nil] :referred_user_id
      # @option params [String, nil] :ad_campaign_ids
      # @option params [String, nil] :ad_group_ids
      # @option params [String, nil] :ad_ids
      # @option params [Whop_sdk::Stats::Types::RetrieveStatsRequestSnapshotWindow, nil] :snapshot_window
      # @option params [String, nil] :event
      #
      # @example
      #   client.stats.retrieve(
      #     metric: "metric",
      #     from: "from",
      #     to: "to",
      #     ad_campaign_ids: ["adcamp_xxxxxxxxxxxxxx"],
      #     ad_group_ids: ["adgrp_xxxxxxxxxxxxxx"],
      #     ad_ids: ["ad_xxxxxxxxxxxxxx"]
      #   )
      #
      # @return [Whop_sdk::Stats::Types::RetrieveStatsResponse]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["to"] = params[:to] if params.key?(:to)
        query_params["interval"] = params[:interval] if params.key?(:interval)
        query_params["breakdown_by"] = params[:breakdown_by] if params.key?(:breakdown_by)
        query_params["convert_to"] = params[:convert_to] if params.key?(:convert_to)
        query_params["currency"] = params[:currency] if params.key?(:currency)
        query_params["time_zone"] = params[:time_zone] if params.key?(:time_zone)
        query_params["payment_method"] = params[:payment_method] if params.key?(:payment_method)
        query_params["card_network"] = params[:card_network] if params.key?(:card_network)
        query_params["dispute_reason"] = params[:dispute_reason] if params.key?(:dispute_reason)
        query_params["source"] = params[:source] if params.key?(:source)
        query_params["hostname"] = params[:hostname] if params.key?(:hostname)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["device_type"] = params[:device_type] if params.key?(:device_type)
        query_params["country_code"] = params[:country_code] if params.key?(:country_code)
        query_params["event_name"] = params[:event_name] if params.key?(:event_name)
        query_params["event_type"] = params[:event_type] if params.key?(:event_type)
        query_params["custom_name"] = params[:custom_name] if params.key?(:custom_name)
        query_params["segment"] = params[:segment] if params.key?(:segment)
        query_params["category"] = params[:category] if params.key?(:category)
        query_params["merchant"] = params[:merchant] if params.key?(:merchant)
        query_params["fee_type"] = params[:fee_type] if params.key?(:fee_type)
        query_params["product"] = params[:product] if params.key?(:product)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["access_level"] = params[:access_level] if params.key?(:access_level)
        query_params["most_recent_action"] = params[:most_recent_action] if params.key?(:most_recent_action)
        query_params["referred_user_id"] = params[:referred_user_id] if params.key?(:referred_user_id)
        query_params["ad_campaign_ids"] = params[:ad_campaign_ids] if params.key?(:ad_campaign_ids)
        query_params["ad_group_ids"] = params[:ad_group_ids] if params.key?(:ad_group_ids)
        query_params["ad_ids"] = params[:ad_ids] if params.key?(:ad_ids)
        query_params["snapshot_window"] = params[:snapshot_window] if params.key?(:snapshot_window)
        query_params["event"] = params[:event] if params.key?(:event)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "stats/#{URI.encode_uri_component(params[:metric].to_s)}",
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
          Whop_sdk::Stats::Types::RetrieveStatsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
