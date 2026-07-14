# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#list
    class VerificationListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Account or user ID whose verifications you want to list. Use a `biz_` account
      #   ID, or the caller's `user_` ID for personal verifications.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute direction
      #   Sort direction for returned verifications.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::VerificationListParams::Direction }

      # @!attribute order
      #   Field used to sort returned verifications.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::VerificationListParams::Order }

      # @!method initialize(account_id:, direction: nil, order: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::VerificationListParams} for more details.
      #
      #   @param account_id [String] Account or user ID whose verifications you want to list. Use a `biz_` account ID
      #
      #   @param direction [Symbol, WhopSDK::Models::VerificationListParams::Direction] Sort direction for returned verifications.
      #
      #   @param order [Symbol, WhopSDK::Models::VerificationListParams::Order] Field used to sort returned verifications.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Sort direction for returned verifications.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Field used to sort returned verifications.
      module Order
        extend WhopSDK::Internal::Type::Enum

        UPDATED_AT = :updated_at
        CREATED_AT = :created_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
