# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#create
    class CardCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The business or user account ID to issue the card for.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute name
      #   Display name for the card.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute spend_limit
      #   Recurring spend limit in dollars (requires spend_limit_frequency).
      #
      #   @return [String, nil]
      optional :spend_limit, String

      # @!attribute spend_limit_frequency
      #
      #   @return [Symbol, WhopSDK::Models::CardCreateParams::SpendLimitFrequency, nil]
      optional :spend_limit_frequency, enum: -> { WhopSDK::CardCreateParams::SpendLimitFrequency }

      # @!attribute transaction_limit
      #   Per-authorization limit in dollars (mutually exclusive with spend_limit).
      #
      #   @return [String, nil]
      optional :transaction_limit, String

      # @!method initialize(account_id:, name: nil, spend_limit: nil, spend_limit_frequency: nil, transaction_limit: nil, request_options: {})
      #   @param account_id [String] The business or user account ID to issue the card for.
      #
      #   @param name [String] Display name for the card.
      #
      #   @param spend_limit [String] Recurring spend limit in dollars (requires spend_limit_frequency).
      #
      #   @param spend_limit_frequency [Symbol, WhopSDK::Models::CardCreateParams::SpendLimitFrequency]
      #
      #   @param transaction_limit [String] Per-authorization limit in dollars (mutually exclusive with spend_limit).
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

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
