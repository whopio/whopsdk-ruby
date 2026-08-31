# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PromoCodes#list
    class PromoCodeListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Account whose promo codes are listed (`biz_` tag).
      #
      #   @return [String]
      required :account_id, String

      # @!attribute after
      #   Cursor to paginate forwards from.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Cursor to paginate backwards from.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only promo codes created after this ISO 8601 timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only promo codes created before this ISO 8601 timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute direction
      #   Sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::PromoCodeListParams::Direction }

      # @!attribute first
      #   Number of promo codes to return from the start of the window.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Number of promo codes to return from the end of the window.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   Sort field.
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::PromoCodeListParams::Order }

      # @!attribute plan_ids
      #   Only promo codes scoped to these plan IDs.
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute product_ids
      #   Only promo codes scoped to these product IDs.
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute status
      #   Promo-code status. `expired` groups inactive and archived codes.
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::PromoCodeListParams::Status }

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, status: nil, api_version_date: nil, request_options: {})
      #   @param account_id [String] Account whose promo codes are listed (`biz_` tag).
      #
      #   @param after [String] Cursor to paginate forwards from.
      #
      #   @param before [String] Cursor to paginate backwards from.
      #
      #   @param created_after [Time] Only promo codes created after this ISO 8601 timestamp.
      #
      #   @param created_before [Time] Only promo codes created before this ISO 8601 timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::PromoCodeListParams::Direction] Sort direction.
      #
      #   @param first [Integer] Number of promo codes to return from the start of the window.
      #
      #   @param last [Integer] Number of promo codes to return from the end of the window.
      #
      #   @param order [Symbol, WhopSDK::Models::PromoCodeListParams::Order] Sort field.
      #
      #   @param plan_ids [Array<String>] Only promo codes scoped to these plan IDs.
      #
      #   @param product_ids [Array<String>] Only promo codes scoped to these product IDs.
      #
      #   @param status [Symbol, WhopSDK::Models::PromoCodeListParams::Status] Promo-code status. `expired` groups inactive and archived codes.
      #
      #   @param api_version_date [String]
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

      # Sort field.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Promo-code status. `expired` groups inactive and archived codes.
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive
        ARCHIVED = :archived
        EXPIRED = :expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
