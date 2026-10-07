# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        # @param base_url [String, nil]
        # @param environment [Hash[Symbol, String], nil]
        #
        # @return [void]
        def initialize(client:, base_url: nil, environment: nil)
          @client = client
          @base_url = base_url
          @environment = environment
        end

        # Lists every report: the aggregates that are not bucketed over time. Each entry names the report's path, its
        # window kind, the breakdowns it accepts and its columns. A property column is an attribute of the row and lists
        # the breakdowns it can ride along with. A metric column is a number measured over the row, with the unit that
        # sets its JSON type, the aggregate that says how to combine it across rows, and the breakdowns and windows it
        # supports. For a bucketed series, use `GET /stats/time_series`.
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
        #   client.stats.reports.list
        #
        # @return [Whop_sdk::Stats::Reports::Types::ListReportsResponse]
        def list(request_options: {}, **_params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "stats/reports",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : Whop_sdk::Stats::Reports::Types::ListReportsResponse.load(response.body))
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Payments across all of Whop, for up to four windows at once. Break rows down by business type, industry type,
        # account country or customer country, and let the business type ride along on industry type rows. The report
        # covers the whole platform, so it takes no `account_id` and any authenticated caller can read it. A breakdown
        # value with fewer than three businesses behind it is left out, and a filtered total that small comes back with
        # every metric `null`.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsRequestBreakdownBy, nil] :breakdown_by
        # @option params [String, nil] :columns
        # @option params [String, nil] :windows
        # @option params [String, nil] :time_zone
        # @option params [Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsRequestOrder, nil] :order
        # @option params [Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsRequestDirection, nil] :direction
        # @option params [String, nil] :convert_to
        # @option params [String, nil] :business_type
        # @option params [String, nil] :industry_type
        # @option params [String, nil] :account_country
        # @option params [String, nil] :customer_country
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        #
        # @example
        #   client.stats.reports.platform_trends
        #
        # @return [Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponse]
        def platform_trends(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["breakdown_by"] = params[:breakdown_by] if params.key?(:breakdown_by)
          query_params["columns"] = params[:columns] if params.key?(:columns)
          query_params["windows"] = params[:windows] if params.key?(:windows)
          query_params["time_zone"] = params[:time_zone] if params.key?(:time_zone)
          query_params["order"] = params[:order] if params.key?(:order)
          query_params["direction"] = params[:direction] if params.key?(:direction)
          query_params["convert_to"] = params[:convert_to] if params.key?(:convert_to)
          query_params["business_type"] = params[:business_type] if params.key?(:business_type)
          query_params["industry_type"] = params[:industry_type] if params.key?(:industry_type)
          query_params["account_country"] = params[:account_country] if params.key?(:account_country)
          query_params["customer_country"] = params[:customer_country] if params.key?(:customer_country)
          query_params["first"] = params[:first] if params.key?(:first)
          query_params["after"] = params[:after] if params.key?(:after)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "stats/reports/platform_trends",
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
            (response.body.to_s.empty? ? nil : Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponse.load(response.body))
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
