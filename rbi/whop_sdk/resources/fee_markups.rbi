# typed: strong

module WhopSDK
  module Resources
    class FeeMarkups
      # Creates or updates a fee markup for a company.
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
        # The ID (tag) of the company you want to update the fee markup for.
        company_id:,
        # The type of fee this markup applies to.
        fee_type:,
        # The fixed fee in USD to charge (0-50).
        fixed_fee_usd: nil,
        # Custom metadata to attach to this fee markup.
        metadata: nil,
        # Internal notes about this fee markup.
        notes: nil,
        # The percentage fee to charge (0-25).
        percentage_fee: nil,
        request_options: {}
      )
      end

      # Lists fee markups for a company.
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
        # The ID (tag) of the company you want to list the fee markups for. If you pass
        # your platform account, you will get the platform default markups.
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

      # Deletes a fee markup for a company.
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
        # The ID of the fee markup to delete.
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
