# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#create
    class Card < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The card ID.
      #
      #   @return [String, nil]
      required :id, String, nil?: true

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::Card::Object]
      required :object, enum: -> { WhopSDK::Card::Object }

      # @!attribute status
      #   The card lifecycle status.
      #
      #   @return [Symbol, WhopSDK::Models::Card::Status, nil]
      required :status, enum: -> { WhopSDK::Card::Status }, nil?: true

      # @!attribute card_type
      #
      #   @return [Symbol, WhopSDK::Models::Card::CardType, nil]
      optional :card_type, enum: -> { WhopSDK::Card::CardType }, nil?: true

      # @!attribute created_at
      #   ISO 8601 creation timestamp.
      #
      #   @return [String, nil]
      optional :created_at, String, nil?: true

      # @!attribute expiration_month
      #
      #   @return [String, nil]
      optional :expiration_month, String, nil?: true

      # @!attribute expiration_year
      #
      #   @return [String, nil]
      optional :expiration_year, String, nil?: true

      # @!attribute last4
      #   The last 4 digits of the card number.
      #
      #   @return [String, nil]
      optional :last4, String, nil?: true

      # @!attribute name
      #   The display name of the card.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute spend_limit
      #   Recurring spend limit in dollars.
      #
      #   @return [String, nil]
      optional :spend_limit, String, nil?: true

      # @!attribute spend_limit_frequency
      #
      #   @return [Symbol, WhopSDK::Models::Card::SpendLimitFrequency, nil]
      optional :spend_limit_frequency, enum: -> { WhopSDK::Card::SpendLimitFrequency }, nil?: true

      # @!attribute transaction_limit
      #   Per-authorization limit in dollars.
      #
      #   @return [String, nil]
      optional :transaction_limit, String, nil?: true

      # @!method initialize(id:, object:, status:, card_type: nil, created_at: nil, expiration_month: nil, expiration_year: nil, last4: nil, name: nil, spend_limit: nil, spend_limit_frequency: nil, transaction_limit: nil)
      #   @param id [String, nil] The card ID.
      #
      #   @param object [Symbol, WhopSDK::Models::Card::Object]
      #
      #   @param status [Symbol, WhopSDK::Models::Card::Status, nil] The card lifecycle status.
      #
      #   @param card_type [Symbol, WhopSDK::Models::Card::CardType, nil]
      #
      #   @param created_at [String, nil] ISO 8601 creation timestamp.
      #
      #   @param expiration_month [String, nil]
      #
      #   @param expiration_year [String, nil]
      #
      #   @param last4 [String, nil] The last 4 digits of the card number.
      #
      #   @param name [String, nil] The display name of the card.
      #
      #   @param spend_limit [String, nil] Recurring spend limit in dollars.
      #
      #   @param spend_limit_frequency [Symbol, WhopSDK::Models::Card::SpendLimitFrequency, nil]
      #
      #   @param transaction_limit [String, nil] Per-authorization limit in dollars.

      # @see WhopSDK::Models::Card#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        CARD = :card

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The card lifecycle status.
      #
      # @see WhopSDK::Models::Card#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        PENDING = :pending
        ACTIVE = :active
        FROZEN = :frozen
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::Card#card_type
      module CardType
        extend WhopSDK::Internal::Type::Enum

        VIRTUAL = :virtual
        PHYSICAL = :physical

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::Card#spend_limit_frequency
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
