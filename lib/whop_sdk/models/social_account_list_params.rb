# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SocialAccounts#list
    class SocialAccountListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The Account that the social accounts are connected to. Provide either this or
      #   user_id.
      #
      #   @return [String, nil]
      optional :account_id, String

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

      # @!attribute direction
      #   Sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::SocialAccountListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::SocialAccountListParams::Direction }

      # @!attribute first
      #   The number of social accounts to return.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of social accounts to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort social accounts by.
      #
      #   @return [Symbol, WhopSDK::Models::SocialAccountListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::SocialAccountListParams::Order }

      # @!attribute platform
      #   Only return social accounts for the platform that is specified.
      #
      #   @return [Symbol, WhopSDK::Models::SocialAccountListParams::Platform, nil]
      optional :platform, enum: -> { WhopSDK::SocialAccountListParams::Platform }

      # @!attribute scopes
      #   Only return social accounts that have these scopes.
      #
      #   @return [Array<Symbol, WhopSDK::Models::SocialAccountListParams::Scope>, nil]
      optional :scopes, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::SocialAccountListParams::Scope] }

      # @!attribute user_id
      #   The User that the social accounts are connected to. Provide either this or
      #   account_id.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute verified
      #   Only return social accounts that are verified on the platform.
      #
      #   @return [Boolean, nil]
      optional :verified, WhopSDK::Internal::Type::Boolean

      # @!method initialize(account_id: nil, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, platform: nil, scopes: nil, user_id: nil, verified: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SocialAccountListParams} for more details.
      #
      #   @param account_id [String] The Account that the social accounts are connected to. Provide either this or us
      #
      #   @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @param direction [Symbol, WhopSDK::Models::SocialAccountListParams::Direction] Sort direction.
      #
      #   @param first [Integer] The number of social accounts to return.
      #
      #   @param last [Integer] The number of social accounts to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::SocialAccountListParams::Order] The field to sort social accounts by.
      #
      #   @param platform [Symbol, WhopSDK::Models::SocialAccountListParams::Platform] Only return social accounts for the platform that is specified.
      #
      #   @param scopes [Array<Symbol, WhopSDK::Models::SocialAccountListParams::Scope>] Only return social accounts that have these scopes.
      #
      #   @param user_id [String] The User that the social accounts are connected to. Provide either this or accou
      #
      #   @param verified [Boolean] Only return social accounts that are verified on the platform.
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

      # The field to sort social accounts by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        DISPLAY_ORDER = :display_order
        CREATED_AT = :created_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Only return social accounts for the platform that is specified.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        X = :x
        INSTAGRAM = :instagram
        YOUTUBE = :youtube
        TIKTOK = :tiktok
        FACEBOOK = :facebook

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Scope
        extend WhopSDK::Internal::Type::Enum

        ADVERTISE = :advertise

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
