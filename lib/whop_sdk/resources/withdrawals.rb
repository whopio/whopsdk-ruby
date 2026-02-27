# frozen_string_literal: true

module WhopSDK
  module Resources
    class Withdrawals
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::WithdrawalCreateParams} for more details.
      #
      # Creates a withdrawal request for a ledger account
      #
      # Required permissions:
      #
      # - `payout:withdraw_funds`
      # - `payout:destination:read`
      #
      # @overload create(amount:, company_id:, currency:, payout_method_id: nil, platform_covers_fees: nil, statement_descriptor: nil, request_options: {})
      #
      # @param amount [Float] The amount to withdraw in the specified currency
      #
      # @param company_id [String] The ID of the company to withdraw from.
      #
      # @param currency [Symbol, WhopSDK::Models::Currency] The currency that is being withdrawn.
      #
      # @param payout_method_id [String, nil] The ID of the payout method to use for the withdrawal.
      #
      # @param platform_covers_fees [Boolean, nil] Whether the platform covers the payout fees instead of the connected account.
      #
      # @param statement_descriptor [String, nil] Custom statement descriptor for the withdrawal. Must be between 5 and 22 charact
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Withdrawal]
      #
      # @see WhopSDK::Models::WithdrawalCreateParams
      def create(params)
        parsed, options = WhopSDK::WithdrawalCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "withdrawals",
          body: parsed,
          model: WhopSDK::Withdrawal,
          options: options
        )
      end

      # Retrieves the details of an existing withdrawal.
      #
      # Required permissions:
      #
      # - `payout:withdrawal:read`
      # - `payout:destination:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the withdrawal to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Withdrawal]
      #
      # @see WhopSDK::Models::WithdrawalRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["withdrawals/%1$s", id],
          model: WhopSDK::Withdrawal,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of withdrawals for a company, with optional sorting and
      # date filtering.
      #
      # Required permissions:
      #
      # - `payout:withdrawal:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list withdrawals for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return withdrawals created after this timestamp.
      #
      # @param created_before [Time, nil] Only return withdrawals created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::WithdrawalListResponse>]
      #
      # @see WhopSDK::Models::WithdrawalListParams
      def list(params)
        parsed, options = WhopSDK::WithdrawalListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "withdrawals",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::WithdrawalListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
