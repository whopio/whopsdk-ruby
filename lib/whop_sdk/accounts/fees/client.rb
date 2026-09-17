# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Retrieves every fee the account is charged, as a document keyed by fee: Whop's fees, resolved the way they are
        # charged, and any markups the platform the account is connected to adds on top. The account's own team, the
        # Whop Verified Partner who referred it, and the platform it is connected to all read the same document;
        # `adjustable` on each fee says what the caller may change through `PATCH`.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        #
        # @example
        #   client.accounts.fees.retrieve(account_id: "account_id")
        #
        # @return [Whop_sdk::Types::AccountFees]
        def retrieve(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/fees",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Types::AccountFees.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Changes fees on the account. The body mirrors the document: send only the keys to change, and each is replaced
        # while the rest stay as they are. A platform sets `markups` on an account connected to it, or `child_markups`
        # on itself for every connected account. A Whop Verified Partner edits the fee schedule of a business they
        # referred, with `notes`, from a first-party Whop session. Every change is validated against the document before
        # anything is written, and a rejected request names the key. Returns the full document.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Accounts::Fees::Types::UpdateFeesRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        #
        # @example
        #   client.accounts.fees.update(account_id: "account_id")
        #
        # @return [Whop_sdk::Types::AccountFees]
        def update(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Accounts::Fees::Types::UpdateFeesRequest.new(params).to_h
          non_body_param_names = %w[account_id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PATCH",
            path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/fees",
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
            Whop_sdk::Types::AccountFees.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
