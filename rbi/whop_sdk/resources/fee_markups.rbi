# typed: strong

module WhopSDK
  module Resources
    class FeeMarkups
      # Create or update a fee markup for a company. If a markup for the specified fee
      # type already exists, it will be updated with the new values.
      #
      # Required permissions:
      #
      # - `company:update_child_fees`
      sig do
        params(
          company_id: String,
          fee_type: WhopSDK::FeeMarkupType::OrSymbol,
          fixed_fee_usd: T.nilable(Float),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String),
          percentage_fee: T.nilable(Float),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::FeeMarkupCreateResponse)
      end
      def create(
        # The unique identifier of the company to create or update the fee markup for.
        company_id:,
        # The type of fee this markup applies to, such as processing or platform fees.
        fee_type:,
        # The fixed fee amount in USD to charge per transaction. Must be between 0 and 50.
        fixed_fee_usd: nil,
        # Custom key-value metadata to attach to this fee markup.
        metadata: nil,
        # Internal notes about this fee markup for record-keeping purposes.
        notes: nil,
        # The percentage fee to charge per transaction. Must be between 0 and 25.
        percentage_fee: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of fee markups configured for a company. If the company
      # is a platform account, returns the platform default markups.
      #
      # Required permissions:
      #
      # - `company:update_child_fees`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::FeeMarkupListResponse]
        )
      end
      def list(
        # The unique identifier of the company to list fee markups for. Pass a platform
        # account identifier to retrieve platform default markups.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Delete a fee markup configuration for a company. This removes the custom fee
      # override and reverts to the parent company's default fees.
      #
      # Required permissions:
      #
      # - `company:update_child_fees`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the fee markup to delete.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
