# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#retrieve
    class CardRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Card ID, prefixed `icrd_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute billing
      #   The billing address.
      #
      #   @return [WhopSDK::Models::CardRetrieveResponse::Billing, nil]
      required :billing, -> { WhopSDK::Models::CardRetrieveResponse::Billing }, nil?: true

      # @!attribute canceled_at
      #   When the card was canceled.
      #
      #   @return [Time, nil]
      required :canceled_at, Time, nil?: true

      # @!attribute created_at
      #   When the card was created.
      #
      #   @return [Time, nil]
      required :created_at, Time, nil?: true

      # @!attribute expiration_month
      #   Card expiration month.
      #
      #   @return [String, nil]
      required :expiration_month, String, nil?: true

      # @!attribute expiration_year
      #   Card expiration year.
      #
      #   @return [String, nil]
      required :expiration_year, String, nil?: true

      # @!attribute last4
      #   Last four digits of the card number. `null` for pending invitation cards.
      #
      #   @return [String, nil]
      required :last4, String, nil?: true

      # @!attribute limit
      #   The spending limit configuration.
      #
      #   @return [WhopSDK::Models::CardRetrieveResponse::Limit, nil]
      required :limit, -> { WhopSDK::Models::CardRetrieveResponse::Limit }, nil?: true

      # @!attribute name
      #   Card display name.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::CardRetrieveResponse::Object]
      required :object, enum: -> { WhopSDK::Models::CardRetrieveResponse::Object }

      # @!attribute spent_last_month
      #   Total spend in the last 30 days, in cents.
      #
      #   @return [Integer, nil]
      required :spent_last_month, Integer, nil?: true

      # @!attribute status
      #   The card status.
      #
      #   @return [Symbol, WhopSDK::Models::CardRetrieveResponse::Status, nil]
      required :status, enum: -> { WhopSDK::Models::CardRetrieveResponse::Status }, nil?: true

      # @!attribute type
      #   The card type.
      #
      #   @return [Symbol, WhopSDK::Models::CardRetrieveResponse::Type, nil]
      required :type, enum: -> { WhopSDK::Models::CardRetrieveResponse::Type }, nil?: true

      # @!attribute user_id
      #   Cardholder user ID, prefixed `user_`, when assigned.
      #
      #   @return [String, nil]
      required :user_id, String, nil?: true

      # @!attribute secrets
      #   Sensitive card details. Present only on `GET /cards/:card_id` for active cards;
      #   `null` when the card is inactive or details cannot be retrieved.
      #
      #   @return [WhopSDK::Models::CardRetrieveResponse::Secrets, nil]
      optional :secrets, -> { WhopSDK::Models::CardRetrieveResponse::Secrets }, nil?: true

      # @!method initialize(id:, billing:, canceled_at:, created_at:, expiration_month:, expiration_year:, last4:, limit:, name:, object:, spent_last_month:, status:, type:, user_id:, secrets: nil)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardRetrieveResponse} for more details.
      #
      #   @param id [String] Card ID, prefixed `icrd_`.
      #
      #   @param billing [WhopSDK::Models::CardRetrieveResponse::Billing, nil] The billing address.
      #
      #   @param canceled_at [Time, nil] When the card was canceled.
      #
      #   @param created_at [Time, nil] When the card was created.
      #
      #   @param expiration_month [String, nil] Card expiration month.
      #
      #   @param expiration_year [String, nil] Card expiration year.
      #
      #   @param last4 [String, nil] Last four digits of the card number. `null` for pending invitation cards.
      #
      #   @param limit [WhopSDK::Models::CardRetrieveResponse::Limit, nil] The spending limit configuration.
      #
      #   @param name [String, nil] Card display name.
      #
      #   @param object [Symbol, WhopSDK::Models::CardRetrieveResponse::Object]
      #
      #   @param spent_last_month [Integer, nil] Total spend in the last 30 days, in cents.
      #
      #   @param status [Symbol, WhopSDK::Models::CardRetrieveResponse::Status, nil] The card status.
      #
      #   @param type [Symbol, WhopSDK::Models::CardRetrieveResponse::Type, nil] The card type.
      #
      #   @param user_id [String, nil] Cardholder user ID, prefixed `user_`, when assigned.
      #
      #   @param secrets [WhopSDK::Models::CardRetrieveResponse::Secrets, nil] Sensitive card details. Present only on `GET /cards/:card_id` for active cards;

      # @see WhopSDK::Models::CardRetrieveResponse#billing
      class Billing < WhopSDK::Internal::Type::BaseModel
        # @!attribute city
        #   Billing city.
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute country_code
        #   Billing country code.
        #
        #   @return [String, nil]
        required :country_code, String, nil?: true

        # @!attribute line1
        #   Street address line 1.
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #   Street address line 2.
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute postal_code
        #   Billing postal code.
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute region
        #   Billing region or state.
        #
        #   @return [String, nil]
        required :region, String, nil?: true

        # @!method initialize(city:, country_code:, line1:, line2:, postal_code:, region:)
        #   The billing address.
        #
        #   @param city [String, nil] Billing city.
        #
        #   @param country_code [String, nil] Billing country code.
        #
        #   @param line1 [String, nil] Street address line 1.
        #
        #   @param line2 [String, nil] Street address line 2.
        #
        #   @param postal_code [String, nil] Billing postal code.
        #
        #   @param region [String, nil] Billing region or state.
      end

      # @see WhopSDK::Models::CardRetrieveResponse#limit
      class Limit < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The limit amount in dollars.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute frequency
        #   Limit window, for example `per24HourPeriod` or `perAuthorization`.
        #
        #   @return [String]
        required :frequency, String

        # @!method initialize(amount:, frequency:)
        #   The spending limit configuration.
        #
        #   @param amount [Float] The limit amount in dollars.
        #
        #   @param frequency [String] Limit window, for example `per24HourPeriod` or `perAuthorization`.
      end

      # @see WhopSDK::Models::CardRetrieveResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        CARD = :card

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The card status.
      #
      # @see WhopSDK::Models::CardRetrieveResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        FROZEN = :frozen
        CANCELED = :canceled
        INVITED = :invited

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The card type.
      #
      # @see WhopSDK::Models::CardRetrieveResponse#type
      module Type
        extend WhopSDK::Internal::Type::Enum

        VIRTUAL = :virtual
        PHYSICAL = :physical

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::CardRetrieveResponse#secrets
      class Secrets < WhopSDK::Internal::Type::BaseModel
        # @!attribute card_number
        #   Full card number.
        #
        #   @return [String]
        required :card_number, String

        # @!attribute cvc
        #   Card verification code.
        #
        #   @return [String]
        required :cvc, String

        # @!attribute name_on_card
        #   Cardholder name printed on the card.
        #
        #   @return [String, nil]
        required :name_on_card, String, nil?: true

        # @!method initialize(card_number:, cvc:, name_on_card:)
        #   Sensitive card details. Present only on `GET /cards/:card_id` for active cards;
        #   `null` when the card is inactive or details cannot be retrieved.
        #
        #   @param card_number [String] Full card number.
        #
        #   @param cvc [String] Card verification code.
        #
        #   @param name_on_card [String, nil] Cardholder name printed on the card.
      end
    end
  end
end
