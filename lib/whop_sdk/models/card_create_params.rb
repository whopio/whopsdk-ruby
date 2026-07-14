# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#create
    class CardCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute assigned_user_id
      #   The company member (a user\_ identifier) to assign the card to. Required for
      #   company (business) card issuing accounts.
      #
      #   @return [String, nil]
      optional :assigned_user_id, String

      # @!attribute name
      #   A display name for the card.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute spend_limit
      #   Spending limit amount, in dollars.
      #
      #   @return [Float, nil]
      optional :spend_limit, Float

      # @!attribute spend_limit_frequency
      #   The spending limit window.
      #
      #   @return [Symbol, WhopSDK::Models::CardCreateParams::SpendLimitFrequency, nil]
      optional :spend_limit_frequency, enum: -> { WhopSDK::CardCreateParams::SpendLimitFrequency }

      # @!attribute transaction_limit
      #   Per-transaction limit amount, in dollars.
      #
      #   @return [Float, nil]
      optional :transaction_limit, Float

      # @!attribute user_id
      #   The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(account_id: nil, assigned_user_id: nil, name: nil, spend_limit: nil, spend_limit_frequency: nil, transaction_limit: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardCreateParams} for more details.
      #
      #   @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @param assigned_user_id [String] The company member (a user\_ identifier) to assign the card to. Required for
      #   comp
      #
      #   @param name [String] A display name for the card.
      #
      #   @param spend_limit [Float] Spending limit amount, in dollars.
      #
      #   @param spend_limit_frequency [Symbol, WhopSDK::Models::CardCreateParams::SpendLimitFrequency] The spending limit window.
      #
      #   @param transaction_limit [Float] Per-transaction limit amount, in dollars.
      #
      #   @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The spending limit window.
      module SpendLimitFrequency
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly
        ONE_TIME = :one_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
