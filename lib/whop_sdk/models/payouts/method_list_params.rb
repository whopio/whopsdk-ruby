# frozen_string_literal: true

module WhopSDK
  module Models
    module Payouts
      # @see WhopSDK::Resources::Payouts::Methods#list
      class MethodListParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        # @!attribute account_id
        #   The owning account ID (a biz\_ identifier). Provide this or user_id.
        #
        #   @return [String, nil]
        optional :account_id, String

        # @!attribute after
        #   Cursor to fetch the page after (from page_info.end_cursor).
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute amount
        #   Optional withdrawal amount in whole currency units, for example `250.00`. When
        #   provided, each method includes a quote with the estimated fee, amount received,
        #   and delivery date for that amount.
        #
        #   @return [Float, nil]
        optional :amount, Float

        # @!attribute before
        #   Cursor to fetch the page before (from page_info.start_cursor).
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute currency
        #   Currency code of the amount, for example `usd`. Only meaningful with amount.
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute first
        #   Number of payout methods to return from the start of the window. Capped at 25
        #   when an amount is provided.
        #
        #   @return [Integer, nil]
        optional :first, Integer

        # @!attribute include_available
        #   When true, the response also carries available_destinations — payout rails the
        #   account could add as a new payout method, with per-currency quotes when an
        #   amount is provided.
        #
        #   @return [Boolean, nil]
        optional :include_available, WhopSDK::Internal::Type::Boolean

        # @!attribute last
        #   Number of payout methods to return from the end of the window.
        #
        #   @return [Integer, nil]
        optional :last, Integer

        # @!attribute status
        #   Optional status filter. `created` means saved but unused, `active` means a
        #   payout through it succeeded, `broken` means the last payout failed and the
        #   method needs fixing.
        #
        #   @return [Symbol, WhopSDK::Models::Payouts::MethodListParams::Status, nil]
        optional :status, enum: -> { WhopSDK::Payouts::MethodListParams::Status }

        # @!attribute user_id
        #   The owning user ID (a user\_ identifier). Provide this or account_id.
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!method initialize(account_id: nil, after: nil, amount: nil, before: nil, currency: nil, first: nil, include_available: nil, last: nil, status: nil, user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payouts::MethodListParams} for more details.
        #
        #   @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
        #
        #   @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
        #
        #   @param amount [Float] Optional withdrawal amount in whole currency units, for example `250.00`. When p
        #
        #   @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
        #
        #   @param currency [String] Currency code of the amount, for example `usd`. Only meaningful with amount.
        #
        #   @param first [Integer] Number of payout methods to return from the start of the window. Capped at 25 wh
        #
        #   @param include_available [Boolean] When true, the response also carries available_destinations — payout rails the a
        #
        #   @param last [Integer] Number of payout methods to return from the end of the window.
        #
        #   @param status [Symbol, WhopSDK::Models::Payouts::MethodListParams::Status] Optional status filter. `created` means saved but unused, `active` means a payou
        #
        #   @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
        #
        #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

        # Optional status filter. `created` means saved but unused, `active` means a
        # payout through it succeeded, `broken` means the last payout failed and the
        # method needs fixing.
        module Status
          extend WhopSDK::Internal::Type::Enum

          CREATED = :created
          ACTIVE = :active
          BROKEN = :broken

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
