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

        # Lists every report: the aggregates that are not bucketed over time, with the breakdowns and columns each one
        # accepts. Use it to discover what a report can return before you retrieve it. For a bucketed series, use `GET
        # /stats/time_series`.
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

        # The revenue lines charged to the businesses that the team of a partner business referred. Each row shows the
        # commission paid to the partner business on that line. Lines that share an income source show the whole
        # commission of that source. A team member who is not an owner sees only the referrals of their own team. While
        # a day of the window is still being read, `commission` and `paid` are `null` on every row. A line may be
        # missing. The days fill within minutes, so read the report again.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :referring_account_id
        # @option params [Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsRequestBreakdownBy, nil] :breakdown_by
        # @option params [String, nil] :columns
        # @option params [String, nil] :windows
        # @option params [String, nil] :time_zone
        # @option params [String, nil] :revenue_line
        # @option params [String, nil] :income_source
        # @option params [Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsRequestOrder, nil] :order
        # @option params [Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsRequestDirection, nil] :direction
        # @option params [String, nil] :convert_to
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        # @option params [Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsRequestMode, nil] :mode
        #
        # @example
        #   client.stats.reports.partner_revenue_lines(referring_account_id: "referring_account_id")
        #
        # @return [Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsResponse]
        def partner_revenue_lines(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["referring_account_id"] = params[:referring_account_id] if params.key?(:referring_account_id)
          query_params["breakdown_by"] = params[:breakdown_by] if params.key?(:breakdown_by)
          query_params["columns"] = params[:columns] if params.key?(:columns)
          query_params["windows"] = params[:windows] if params.key?(:windows)
          query_params["time_zone"] = params[:time_zone] if params.key?(:time_zone)
          query_params["revenue_line"] = params[:revenue_line] if params.key?(:revenue_line)
          query_params["income_source"] = params[:income_source] if params.key?(:income_source)
          query_params["order"] = params[:order] if params.key?(:order)
          query_params["direction"] = params[:direction] if params.key?(:direction)
          query_params["convert_to"] = params[:convert_to] if params.key?(:convert_to)
          query_params["first"] = params[:first] if params.key?(:first)
          query_params["after"] = params[:after] if params.key?(:after)
          query_params["mode"] = params[:mode] if params.key?(:mode)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "stats/reports/partner_revenue_lines",
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
            (response.body.to_s.empty? ? nil : Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsResponse.load(response.body))
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Retrieves payments across all of Whop for up to four windows at once. Pass `breakdown_by` to split them by
        # business type, industry type, product category, account country or customer country. The report covers the
        # whole platform, so it takes no `account_id`. Only users with Trends access can read it, from whop.com, the
        # Whop apps, the Whop CLI or the Whop MCP.
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
        # @option params [String, nil] :product_category
        # @option params [String, nil] :account_country
        # @option params [String, nil] :customer_country
        # @option params [String, nil] :blueprint
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        # @option params [Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsRequestMode, nil] :mode
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
          query_params["product_category"] = params[:product_category] if params.key?(:product_category)
          query_params["account_country"] = params[:account_country] if params.key?(:account_country)
          query_params["customer_country"] = params[:customer_country] if params.key?(:customer_country)
          query_params["blueprint"] = params[:blueprint] if params.key?(:blueprint)
          query_params["first"] = params[:first] if params.key?(:first)
          query_params["after"] = params[:after] if params.key?(:after)
          query_params["mode"] = params[:mode] if params.key?(:mode)

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
