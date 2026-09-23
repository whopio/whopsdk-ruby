# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
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

      # Lists requests sent by an eligible partner and requests for accounts where the authenticated user currently
      # holds the owner role. Enrolled, non-suspended partners can read their links without verification; reading their
      # sent manual requests requires verification. Filters narrow that combined view. Use a Whop login session or an
      # account API key with `partner:referral_request:read`. The key must have been created by the account's current
      # owner. Account API keys return their owner's sent requests and incoming requests for the key's account.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [String, nil] :partner_id
      # @option params [Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsRequestStatus, nil] :status
      # @option params [Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsRequestRequestType, nil] :request_type
      # @option params [Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsRequestOrder, nil] :order
      # @option params [Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsRequestDirection, nil] :direction
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.partner_referral_requests.list
      #
      # @return [Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["partner_id"] = params[:partner_id] if params.key?(:partner_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["request_type"] = params[:request_type] if params.key?(:request_type)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)
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
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "partner_referral_requests",
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
            parsed_response = Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Creates a pending manual request for an existing business as the authenticated, enrolled, verified Whop partner.
      # Provide exactly one of account_id or account_url. Whop business and product links resolve to their business. A
      # business owner must accept before attribution changes. An existing pending manual request from the same partner
      # returns 200; a new request returns 201. Alternatively, send request_type=link without a code, business, or
      # redemption limit to get your oldest saved referral link, or create one with a randomly generated code when none
      # exists. Provide a custom code or redemption limit to create a new link; omitted codes are generated randomly.
      # Only authorized staff may configure rewards or select another partner. Link creation requires partner enrollment
      # and a non-suspended account, but not verification. Use a Whop login session or an account API key with
      # `partner:referral_request:create`. The key must have been created by the account's current owner and acts as
      # that owner.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::PartnerReferralRequests::Types::CreatePartnerReferralRequestsRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.partner_referral_requests.create(account_id: "biz_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::PartnerReferralRequest]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "partner_referral_requests",
          body: Whop_sdk::PartnerReferralRequests::Types::CreatePartnerReferralRequestsRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::PartnerReferralRequest.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a request visible to its eligible sender or a current owner of the receiving account. Enrolled,
      # non-suspended partners can read their links without verification. Use a Whop login session or an account API key
      # with `partner:referral_request:read`. The key must have been created by the account's current owner. Account API
      # keys can retrieve their owner's sent requests and incoming requests for the key's account.
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
      #   client.partner_referral_requests.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::PartnerReferralRequest]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "GET",
          path: "partner_referral_requests/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::PartnerReferralRequest.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Accepts a pending manual request as a current business owner and attributes the business to the verified
      # requesting partner. Existing active attribution blocks acceptance. Repeating acceptance returns the accepted
      # request. Use a Whop login session or an account API key with `partner:referral_request:accept`. The key must
      # have been created by the account's current owner. Account API keys can respond only to requests for the key's
      # account.
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
      #   client.partner_referral_requests.accept(id: "id")
      #
      # @return [Whop_sdk::Types::PartnerReferralRequest]
      def accept(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "partner_referral_requests/#{URI.encode_uri_component(params[:id].to_s)}/accept",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::PartnerReferralRequest.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cancels a pending manual request as its eligible requesting partner. Repeating cancellation returns the
      # cancelled request. Use a Whop login session or an account API key with `partner:referral_request:cancel`. The
      # key must have been created by the account's current owner. Account API keys cancel requests as their account
      # owner.
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
      #   client.partner_referral_requests.cancel(id: "id")
      #
      # @return [Whop_sdk::Types::PartnerReferralRequest]
      def cancel(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "partner_referral_requests/#{URI.encode_uri_component(params[:id].to_s)}/cancel",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::PartnerReferralRequest.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Denies a pending manual request as a current business owner. Repeating denial returns the denied request. Use a
      # Whop login session or an account API key with `partner:referral_request:decline`. The key must have been created
      # by the account's current owner. Account API keys can respond only to requests for the key's account.
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
      #   client.partner_referral_requests.decline(id: "id")
      #
      # @return [Whop_sdk::Types::PartnerReferralRequest]
      def decline(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "partner_referral_requests/#{URI.encode_uri_component(params[:id].to_s)}/decline",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::PartnerReferralRequest.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
