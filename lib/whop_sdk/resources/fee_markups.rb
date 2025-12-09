# frozen_string_literal: true

module WhopSDK
  module Resources
    class FeeMarkups
      # Creates or updates a fee markup for a company.
      #
      # Required permissions:
      #
      # - `company:update_child_fees`
      #
      # @overload create(company_id:, fee_type:, fixed_fee_usd: nil, metadata: nil, notes: nil, percentage_fee: nil, request_options: {})
      #
      # @param company_id [String] The ID (tag) of the company you want to update the fee markup for.
      #
      # @param fee_type [Symbol, WhopSDK::Models::FeeMarkupType] The type of fee this markup applies to.
      #
      # @param fixed_fee_usd [Float, nil] The fixed fee in USD to charge (0-50).
      #
      # @param metadata [Hash{Symbol=>Object}, nil] Custom metadata to attach to this fee markup.
      #
      # @param notes [String, nil] Internal notes about this fee markup.
      #
      # @param percentage_fee [Float, nil] The percentage fee to charge (0-25).
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
      # Lists fee markups for a company.
      #
      # Required permissions:
      #
      # - `company:update_child_fees`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param company_id [String] The ID (tag) of the company you want to list the fee markups for. If you pass yo
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
        @client.request(
          method: :get,
          path: "fee_markups",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::FeeMarkupListResponse,
          options: options
        )
      end

      # Deletes a fee markup for a company.
      #
      # Required permissions:
      #
      # - `company:update_child_fees`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the fee markup to delete.
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
