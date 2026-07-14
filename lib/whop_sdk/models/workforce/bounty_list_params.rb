# frozen_string_literal: true

module WhopSDK
  module Models
    module Workforce
      # @see WhopSDK::Resources::Workforce::Bounties#list
      class BountyListParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        # @!attribute account_id
        #   Scope the list to this account (`biz_` tag). Requires read access to the
        #   account; account API keys may pass their own account or a connected account.
        #
        #   @return [String, nil]
        optional :account_id, String

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
        #   Only bounties created after this ISO 8601 timestamp.
        #
        #   @return [String, nil]
        optional :created_after, String

        # @!attribute created_before
        #   Only bounties created before this ISO 8601 timestamp.
        #
        #   @return [String, nil]
        optional :created_before, String

        # @!attribute direction
        #   Sort direction.
        #
        #   @return [Symbol, WhopSDK::Models::Workforce::BountyListParams::Direction, nil]
        optional :direction, enum: -> { WhopSDK::Workforce::BountyListParams::Direction }

        # @!attribute first
        #   Number of bounties to return from the start of the window.
        #
        #   @return [Integer, nil]
        optional :first, Integer

        # @!attribute last
        #   Number of bounties to return from the end of the window.
        #
        #   @return [Integer, nil]
        optional :last, Integer

        # @!attribute order
        #   Sort field.
        #
        #   @return [Symbol, WhopSDK::Models::Workforce::BountyListParams::Order, nil]
        optional :order, enum: -> { WhopSDK::Workforce::BountyListParams::Order }

        # @!attribute query
        #   Substring match on the bounty title or ID.
        #
        #   @return [String, nil]
        optional :query, String

        # @!attribute status
        #   Filter by lifecycle state.
        #
        #   @return [Symbol, WhopSDK::Models::Workforce::BountyListParams::Status, nil]
        optional :status, enum: -> { WhopSDK::Workforce::BountyListParams::Status }

        # @!attribute user_id
        #   List the bounties this user participated in (`user_` tag). Must be the
        #   authenticated user.
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!method initialize(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, status: nil, user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Workforce::BountyListParams} for more details.
        #
        #   @param account_id [String] Scope the list to this account (`biz_` tag). Requires read access to the account
        #
        #   @param after [String] Cursor to paginate forwards from.
        #
        #   @param before [String] Cursor to paginate backwards from.
        #
        #   @param created_after [String] Only bounties created after this ISO 8601 timestamp.
        #
        #   @param created_before [String] Only bounties created before this ISO 8601 timestamp.
        #
        #   @param direction [Symbol, WhopSDK::Models::Workforce::BountyListParams::Direction] Sort direction.
        #
        #   @param first [Integer] Number of bounties to return from the start of the window.
        #
        #   @param last [Integer] Number of bounties to return from the end of the window.
        #
        #   @param order [Symbol, WhopSDK::Models::Workforce::BountyListParams::Order] Sort field.
        #
        #   @param query [String] Substring match on the bounty title or ID.
        #
        #   @param status [Symbol, WhopSDK::Models::Workforce::BountyListParams::Status] Filter by lifecycle state.
        #
        #   @param user_id [String] List the bounties this user participated in (`user_` tag). Must be the authentic
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
          GROSS_PAID_OUT_AMOUNT = :gross_paid_out_amount

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter by lifecycle state.
        module Status
          extend WhopSDK::Internal::Type::Enum

          SCHEDULED = :scheduled
          OPEN = :open
          CLOSED = :closed
          COMPLETED = :completed
          CANCELED = :canceled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
