# frozen_string_literal: true

module WhopSDK
  module Models
    module Partners
      # @see WhopSDK::Resources::Partners::Businesses#list
      class BusinessListParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   Cursor to fetch the page after (from page_info.end_cursor).
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   Cursor to fetch the page before (from page_info.start_cursor).
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute created_after
        #   Only return partner businesses created after this timestamp.
        #
        #   @return [String, nil]
        optional :created_after, String

        # @!attribute created_before
        #   Only return partner businesses created before this timestamp.
        #
        #   @return [String, nil]
        optional :created_before, String

        # @!attribute direction
        #   Sort direction.
        #
        #   @return [Symbol, WhopSDK::Models::Partners::BusinessListParams::Direction, nil]
        optional :direction, enum: -> { WhopSDK::Partners::BusinessListParams::Direction }

        # @!attribute first
        #   Number of partner businesses to return from the start of the window.
        #
        #   @return [Integer, nil]
        optional :first, Integer

        # @!attribute has_earnings
        #   When true, only businesses with pending or completed earnings paid to the
        #   caller.
        #
        #   @return [Boolean, nil]
        optional :has_earnings, WhopSDK::Internal::Type::Boolean

        # @!attribute last
        #   Number of partner businesses to return from the end of the window.
        #
        #   @return [Integer, nil]
        optional :last, Integer

        # @!attribute order
        #   The field to sort partner businesses by.
        #
        #   @return [Symbol, WhopSDK::Models::Partners::BusinessListParams::Order, nil]
        optional :order, enum: -> { WhopSDK::Partners::BusinessListParams::Order }

        # @!attribute referred_user_id
        #   Filter to referrals attributed to this user. For first-tier referrals, this is
        #   the referred account owner; for second-tier referrals, this is the partner you
        #   recruited.
        #
        #   @return [String, nil]
        optional :referred_user_id, String

        # @!attribute referred_username
        #   Filter by the referred user's exact username. Ignored when `referred_user_id` is
        #   present.
        #
        #   @return [String, nil]
        optional :referred_username, String

        # @!attribute status
        #   Filter by referral status.
        #
        #   @return [Symbol, WhopSDK::Models::Partners::BusinessListParams::Status, nil]
        optional :status, enum: -> { WhopSDK::Partners::BusinessListParams::Status }

        # @!attribute tier
        #   Filter to only first-tier referrals or only second-tier referrals.
        #
        #   @return [Symbol, WhopSDK::Models::Partners::BusinessListParams::Tier, nil]
        optional :tier, enum: -> { WhopSDK::Partners::BusinessListParams::Tier }

        # @!method initialize(after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, has_earnings: nil, last: nil, order: nil, referred_user_id: nil, referred_username: nil, status: nil, tier: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Partners::BusinessListParams} for more details.
        #
        #   @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
        #
        #   @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
        #
        #   @param created_after [String] Only return partner businesses created after this timestamp.
        #
        #   @param created_before [String] Only return partner businesses created before this timestamp.
        #
        #   @param direction [Symbol, WhopSDK::Models::Partners::BusinessListParams::Direction] Sort direction.
        #
        #   @param first [Integer] Number of partner businesses to return from the start of the window.
        #
        #   @param has_earnings [Boolean] When true, only businesses with pending or completed earnings paid to the caller
        #
        #   @param last [Integer] Number of partner businesses to return from the end of the window.
        #
        #   @param order [Symbol, WhopSDK::Models::Partners::BusinessListParams::Order] The field to sort partner businesses by.
        #
        #   @param referred_user_id [String] Filter to referrals attributed to this user. For first-tier referrals, this is t
        #
        #   @param referred_username [String] Filter by the referred user's exact username. Ignored when `referred_user_id` is
        #
        #   @param status [Symbol, WhopSDK::Models::Partners::BusinessListParams::Status] Filter by referral status.
        #
        #   @param tier [Symbol, WhopSDK::Models::Partners::BusinessListParams::Tier] Filter to only first-tier referrals or only second-tier referrals.
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

        # The field to sort partner businesses by.
        module Order
          extend WhopSDK::Internal::Type::Enum

          CREATED_AT = :created_at
          REFERRAL_STARTED_AT = :referral_started_at
          REFERRAL_EXPIRES_AT = :referral_expires_at
          PAYOUT_PERCENTAGE = :payout_percentage
          VOLUME_USD = :volume_usd
          EARNINGS_USD = :earnings_usd

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter by referral status.
        module Status
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          REMOVED = :removed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter to only first-tier referrals or only second-tier referrals.
        module Tier
          extend WhopSDK::Internal::Type::Enum

          FIRST = :first
          SECOND = :second

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
