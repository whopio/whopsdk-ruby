# frozen_string_literal: true

module WhopSDK
  module Models
    class CardCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute data
      #
      #   @return [WhopSDK::Models::CardCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::CardCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"card.created"]
      required :type, const: :"card.created"

      # @!attribute account_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"card.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::CardCreatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"card.created"] The webhook event type

      # @see WhopSDK::Models::CardCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Card ID, prefixed `icrd_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute billing
        #   The billing address.
        #
        #   @return [WhopSDK::Models::CardCreatedWebhookEvent::Data::Billing, nil]
        required :billing, -> { WhopSDK::CardCreatedWebhookEvent::Data::Billing }, nil?: true

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
        #   @return [WhopSDK::Models::CardCreatedWebhookEvent::Data::Limit, nil]
        required :limit, -> { WhopSDK::CardCreatedWebhookEvent::Data::Limit }, nil?: true

        # @!attribute name
        #   Card display name.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::CardCreatedWebhookEvent::Data::Object]
        required :object, enum: -> { WhopSDK::CardCreatedWebhookEvent::Data::Object }

        # @!attribute spent_last_month
        #   Total spend in the last 30 days, in cents.
        #
        #   @return [Integer, nil]
        required :spent_last_month, Integer, nil?: true

        # @!attribute status
        #   The card status. `denied` means the issuer declined the cardholder, so the card
        #   will never be issued.
        #
        #   @return [Symbol, WhopSDK::Models::CardCreatedWebhookEvent::Data::Status, nil]
        required :status, enum: -> { WhopSDK::CardCreatedWebhookEvent::Data::Status }, nil?: true

        # @!attribute type
        #   The card type.
        #
        #   @return [Symbol, WhopSDK::Models::CardCreatedWebhookEvent::Data::Type, nil]
        required :type, enum: -> { WhopSDK::CardCreatedWebhookEvent::Data::Type }, nil?: true

        # @!attribute user_id
        #   Cardholder user ID, prefixed `user_`, when assigned.
        #
        #   @return [String, nil]
        required :user_id, String, nil?: true

        # @!attribute secrets
        #   Sensitive card details. Present only on `GET /cards/:id` for active cards;
        #   `null` when the card is inactive or details cannot be retrieved.
        #
        #   @return [WhopSDK::Models::CardCreatedWebhookEvent::Data::Secrets, nil]
        optional :secrets, -> { WhopSDK::CardCreatedWebhookEvent::Data::Secrets }, nil?: true

        # @!method initialize(id:, billing:, canceled_at:, created_at:, expiration_month:, expiration_year:, last4:, limit:, name:, object:, spent_last_month:, status:, type:, user_id:, secrets: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CardCreatedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Card ID, prefixed `icrd_`.
        #
        #   @param billing [WhopSDK::Models::CardCreatedWebhookEvent::Data::Billing, nil] The billing address.
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
        #   @param limit [WhopSDK::Models::CardCreatedWebhookEvent::Data::Limit, nil] The spending limit configuration.
        #
        #   @param name [String, nil] Card display name.
        #
        #   @param object [Symbol, WhopSDK::Models::CardCreatedWebhookEvent::Data::Object]
        #
        #   @param spent_last_month [Integer, nil] Total spend in the last 30 days, in cents.
        #
        #   @param status [Symbol, WhopSDK::Models::CardCreatedWebhookEvent::Data::Status, nil] The card status. `denied` means the issuer declined the cardholder, so the card
        #
        #   @param type [Symbol, WhopSDK::Models::CardCreatedWebhookEvent::Data::Type, nil] The card type.
        #
        #   @param user_id [String, nil] Cardholder user ID, prefixed `user_`, when assigned.
        #
        #   @param secrets [WhopSDK::Models::CardCreatedWebhookEvent::Data::Secrets, nil] Sensitive card details. Present only on `GET /cards/:id` for active cards; `null

        # @see WhopSDK::Models::CardCreatedWebhookEvent::Data#billing
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

        # @see WhopSDK::Models::CardCreatedWebhookEvent::Data#limit
        class Limit < WhopSDK::Internal::Type::BaseModel
          # @!attribute amount
          #   The limit amount in dollars.
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute frequency
          #   The window the limit amount applies to. `per_transaction` caps each individual
          #   authorization and is what a limit set with `transaction_limit` reports.
          #
          #   @return [Symbol, WhopSDK::Models::CardCreatedWebhookEvent::Data::Limit::Frequency]
          required :frequency, enum: -> { WhopSDK::CardCreatedWebhookEvent::Data::Limit::Frequency }

          # @!method initialize(amount:, frequency:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CardCreatedWebhookEvent::Data::Limit} for more details.
          #
          #   The spending limit configuration.
          #
          #   @param amount [Float] The limit amount in dollars.
          #
          #   @param frequency [Symbol, WhopSDK::Models::CardCreatedWebhookEvent::Data::Limit::Frequency] The window the limit amount applies to. `per_transaction` caps each individual a

          # The window the limit amount applies to. `per_transaction` caps each individual
          # authorization and is what a limit set with `transaction_limit` reports.
          #
          # @see WhopSDK::Models::CardCreatedWebhookEvent::Data::Limit#frequency
          module Frequency
            extend WhopSDK::Internal::Type::Enum

            DAILY = :daily
            WEEKLY = :weekly
            MONTHLY = :monthly
            ONE_TIME = :one_time
            PER_TRANSACTION = :per_transaction

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::CardCreatedWebhookEvent::Data#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          CARD = :card

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The card status. `denied` means the issuer declined the cardholder, so the card
        # will never be issued.
        #
        # @see WhopSDK::Models::CardCreatedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          FROZEN = :frozen
          CANCELED = :canceled
          INVITED = :invited
          DENIED = :denied

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The card type.
        #
        # @see WhopSDK::Models::CardCreatedWebhookEvent::Data#type
        module Type
          extend WhopSDK::Internal::Type::Enum

          VIRTUAL = :virtual
          PHYSICAL = :physical

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::CardCreatedWebhookEvent::Data#secrets
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

          # @!attribute pin
          #   The card PIN. Only returned when the request is authenticated as the user the
          #   card is assigned to; `null` for all other callers, including account API keys.
          #
          #   @return [String, nil]
          required :pin, String, nil?: true

          # @!method initialize(card_number:, cvc:, name_on_card:, pin:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CardCreatedWebhookEvent::Data::Secrets} for more details.
          #
          #   Sensitive card details. Present only on `GET /cards/:id` for active cards;
          #   `null` when the card is inactive or details cannot be retrieved.
          #
          #   @param card_number [String] Full card number.
          #
          #   @param cvc [String] Card verification code.
          #
          #   @param name_on_card [String, nil] Cardholder name printed on the card.
          #
          #   @param pin [String, nil] The card PIN. Only returned when the request is authenticated as the user the ca
        end
      end
    end
  end
end
