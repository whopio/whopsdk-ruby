# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Lists the businesses the authenticated user referred onto Whop, most recent first.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestStatus, nil] :status
        # @option params [Boolean, nil] :has_earnings
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        # @option params [Integer, nil] :last
        # @option params [String, nil] :before
        # @option params [Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestOrder, nil] :order
        # @option params [Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestDirection, nil] :direction
        # @option params [String, nil] :created_before
        # @option params [String, nil] :created_after
        # @option params [String, nil] :referred_user_id
        # @option params [String, nil] :referred_username
        # @option params [Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestTier, nil] :tier
        #
        # @example
        #   client.partners.businesses.list
        #
        # @return [Whop_sdk::Partners::Businesses::Types::ListBusinessesResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["status"] = params[:status] if params.key?(:status)
          query_params["has_earnings"] = params[:has_earnings] if params.key?(:has_earnings)
          query_params["first"] = params[:first] if params.key?(:first)
          query_params["after"] = params[:after] if params.key?(:after)
          query_params["last"] = params[:last] if params.key?(:last)
          query_params["before"] = params[:before] if params.key?(:before)
          query_params["order"] = params[:order] if params.key?(:order)
          query_params["direction"] = params[:direction] if params.key?(:direction)
          query_params["created_before"] = params[:created_before] if params.key?(:created_before)
          query_params["created_after"] = params[:created_after] if params.key?(:created_after)
          query_params["referred_user_id"] = params[:referred_user_id] if params.key?(:referred_user_id)
          query_params["referred_username"] = params[:referred_username] if params.key?(:referred_username)
          query_params["tier"] = params[:tier] if params.key?(:tier)

          Whop_sdk::Internal::CursorItemIterator.new(
            cursor_field: :end_cursor,
            item_field: :data,
            initial_cursor: query_params["after"]
          ) do |next_cursor|
            query_params["after"] = next_cursor
            request = Whop_sdk::Internal::JSON::Request.new(
              base_url: request_options[:base_url],
              method: "GET",
              path: "partners/businesses",
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
              parsed_response = Whop_sdk::Partners::Businesses::Types::ListBusinessesResponse.load(response.body)
              [parsed_response, response]
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end

        # Retrieves a single referred business and its referral terms.
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
        #   client.partners.businesses.retrieve(id: "id")
        #
        # @return [Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponse]
        def retrieve(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "partners/businesses/#{URI.encode_uri_component(params[:id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @return [Whop_sdk::Earnings::Client]
        def earnings
          @earnings ||= Whop_sdk::Partners::Businesses::Earnings::Client.new(client: @client)
        end
      end
    end
  end
end
