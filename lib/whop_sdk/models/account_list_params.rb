# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Accounts#list
    class AccountListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   A cursor; returns accounts after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor; returns accounts before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute direction
      #   Sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::AccountListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::AccountListParams::Direction }

      # @!attribute first
      #   The number of accounts to return (default 10, max 50).
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of accounts to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort accounts by.
      #
      #   @return [Symbol, WhopSDK::Models::AccountListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::AccountListParams::Order }

      # @!method initialize(after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, request_options: {})
      #   @param after [String] A cursor; returns accounts after this position.
      #
      #   @param before [String] A cursor; returns accounts before this position.
      #
      #   @param direction [Symbol, WhopSDK::Models::AccountListParams::Direction] Sort direction.
      #
      #   @param first [Integer] The number of accounts to return (default 10, max 50).
      #
      #   @param last [Integer] The number of accounts to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::AccountListParams::Order] The field to sort accounts by.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The field to sort accounts by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
