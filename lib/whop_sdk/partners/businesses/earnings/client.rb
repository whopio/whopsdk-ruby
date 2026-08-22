# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        class Client
          # @param client [Whop_sdk::Internal::Http::RawClient]
          #
          # @return [void]
          def initialize(client:)
            @client = client
          end

          # Lists the earnings Whop pays out for one referred business's activity, most recent first.
          #
          # @param request_options [Hash]
          # @param params [Hash]
          # @option request_options [String] :base_url
          # @option request_options [Hash{String => Object}] :additional_headers
          # @option request_options [Hash{String => Object}] :additional_query_parameters
          # @option request_options [Hash{String => Object}] :additional_body_parameters
          # @option request_options [Integer] :timeout_in_seconds
          # @option params [String] :id
          # @option params [Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestStatus, nil] :status
          # @option params [Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestIncomeSourceItem, nil] :income_source
          # @option params [Integer, nil] :first
          # @option params [String, nil] :after
          # @option params [Integer, nil] :last
          # @option params [String, nil] :before
          # @option params [Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestOrder, nil] :order
          # @option params [Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestDirection, nil] :direction
          # @option params [String, nil] :created_before
          # @option params [String, nil] :created_after
          #
          # @example
          #   client.partners.businesses.earnings.list(id: "id")
          #
          # @return [Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponse]
          def list(request_options: {}, **params)
            params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
            query_params = {}
            query_params["status"] = params[:status] if params.key?(:status)
            query_params["income_source"] = params[:income_source] if params.key?(:income_source)
            query_params["first"] = params[:first] if params.key?(:first)
            query_params["after"] = params[:after] if params.key?(:after)
            query_params["last"] = params[:last] if params.key?(:last)
            query_params["before"] = params[:before] if params.key?(:before)
            query_params["order"] = params[:order] if params.key?(:order)
            query_params["direction"] = params[:direction] if params.key?(:direction)
            query_params["created_before"] = params[:created_before] if params.key?(:created_before)
            query_params["created_after"] = params[:created_after] if params.key?(:created_after)

            Whop_sdk::Internal::CursorItemIterator.new(
              cursor_field: :end_cursor,
              item_field: :data,
              initial_cursor: query_params["after"]
            ) do |next_cursor|
              query_params["after"] = next_cursor
              request = Whop_sdk::Internal::JSON::Request.new(
                base_url: request_options[:base_url],
                method: "GET",
                path: "partners/businesses/#{URI.encode_uri_component(params[:id].to_s)}/earnings",
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
                parsed_response = Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponse.load(response.body)
                [parsed_response, response]
              else
                error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
                raise error_class.new(response.body, code: code)
              end
            end
          end
        end
      end
    end
  end
end
