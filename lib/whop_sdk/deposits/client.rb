# frozen_string_literal: true

module Whop_sdk
  module Deposits
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

      # Returns the deposit methods for an account or user, including crypto addresses, bank transfer instructions, and,
      # for a business, a hosted deposit page. Bitcoin deposits are converted to USDT on Plasma in the destination's
      # wallet. Business destinations require no authentication. Pass `payment_method_id` to also charge a business's
      # saved payment method for `amount` in USD and add it to the business's balance; that requires authentication with
      # the `payment:charge` scope. The charge has no fees or taxes and does not count as revenue.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Deposits::Types::CreateDepositsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.deposits.create(destination: "biz_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Deposits::Types::CreateDepositsResponse]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "deposits",
          body: Whop_sdk::Deposits::Types::CreateDepositsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Deposits::Types::CreateDepositsResponse.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Sends a bank deposit back to the bank account that wired it and takes it back out of the balance. Identify the
      # deposit by its `vbt_` ID, the `source.id` of its row in the account's financial activity. The available balance
      # has to cover the deposit minus the deposit fee, which is refunded. Returns the reversal's own row in the
      # financial activity: a `topup_reversal` debit for the full deposit amount, whose `source` is the bank deposit.
      # The source's `status` is `reversal_in_progress` until the money is back with the sender, then `reversed`. A card
      # deposit is identified by the `pay_` ID that [Create Deposit](/api-reference/beta/deposits/create-deposit)
      # returned as `methods.card.payment_id`, and is refunded to the card that paid it. The available balance has to
      # cover the rest of the deposit that has not been refunded yet, or the reversal fails and nothing is refunded.
      # Returns the refund's row in the financial activity: a `payment_refund` debit.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Deposits::Types::ReverseDepositsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.deposits.reverse(id: "vbt_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::LedgerActivity]
      def reverse(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Deposits::Types::ReverseDepositsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "deposits/#{URI.encode_uri_component(params[:id].to_s)}/reverse",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::LedgerActivity.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
