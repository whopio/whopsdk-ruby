# frozen_string_literal: true

module WhopSDK
  module Resources
    class FeeMarkups
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::FeeMarkupCreateParams} for more details.
      #
      # Create or update a fee markup for a company. If a markup for the specified fee
      # type already exists, it will be updated with the new values.
      #
      # Required permissions:
      #
      # - `company:update_child_fees`
      #
      # @overload create(company_id:, fee_type:, fixed_fee_usd: nil, metadata: nil, notes: nil, percentage_fee: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to create or update the fee markup for.
      #
      # @param fee_type [Symbol, WhopSDK::Models::FeeMarkupType] The type of fee this markup applies to, such as processing or platform fees.
      #
      # @param fixed_fee_usd [Float, nil] The fixed fee amount in USD to charge per transaction. Must be between 0 and 50.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] Custom key-value metadata to attach to this fee markup.
      #
      # @param notes [String, nil] Internal notes about this fee markup for record-keeping purposes.
      #
      # @param percentage_fee [Float, nil] The percentage fee to charge per transaction. Must be between 0 and 25.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::FeeMarkupCreateResponse]
      #
      # @see WhopSDK::Models::FeeMarkupCreateParams
      def create(params)
        parsed, options = WhopSDK::FeeMarkupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "fee_markups",
          body: parsed,
          model: WhopSDK::Models::FeeMarkupCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::FeeMarkupListParams} for more details.
      #
      # Returns a paginated list of fee markups configured for a company. If the company
      # is a platform account, returns the platform default markups.
      #
      # Required permissions:
      #
      # - `company:update_child_fees`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list fee markups for. Pass a platform ac
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::FeeMarkupListResponse>]
      #
      # @see WhopSDK::Models::FeeMarkupListParams
      def list(params)
        parsed, options = WhopSDK::FeeMarkupListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "fee_markups",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::FeeMarkupListResponse,
          options: options
        )
      end

      # Delete a fee markup configuration for a company. This removes the custom fee
      # override and reverts to the parent company's default fees.
      #
      # Required permissions:
      #
      # - `company:update_child_fees`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the fee markup to delete.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::FeeMarkupDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["fee_markups/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
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
