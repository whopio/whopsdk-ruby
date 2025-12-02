# frozen_string_literal: true

module WhopSDK
  module Models
    class SetupIntentRequiresActionWebhookEvent < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute data
      #   An object representing a setup intent, which is a flow for allowing a customer
      #   to add a payment method to their account without making a purchase.
      #
      #   @return [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data]
      required :data, -> { WhopSDK::SetupIntentRequiresActionWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"setup_intent.requires_action"]
      required :type, const: :"setup_intent.requires_action"

      # @!method initialize(id:, data:, timestamp:, api_version: :v1, type: :"setup_intent.requires_action")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SetupIntentRequiresActionWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data] An object representing a setup intent, which is a flow for allowing a customer t
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"setup_intent.requires_action"] The webhook event type

      # @see WhopSDK::Models::SetupIntentRequiresActionWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The setup intent ID
        #
        #   @return [String]
        required :id, String

        # @!attribute checkout_configuration
        #   The checkout configuration associated with the setup intent
        #
        #   @return [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::CheckoutConfiguration, nil]
        required :checkout_configuration,
                 -> { WhopSDK::SetupIntentRequiresActionWebhookEvent::Data::CheckoutConfiguration },
                 nil?: true

        # @!attribute company
        #   The company of the setup intent
        #
        #   @return [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::Company, nil]
        required :company, -> { WhopSDK::SetupIntentRequiresActionWebhookEvent::Data::Company }, nil?: true

        # @!attribute created_at
        #   The datetime the payment was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute error_message
        #   The error message, if any.
        #
        #   @return [String, nil]
        required :error_message, String, nil?: true

        # @!attribute member
        #   The member connected to the setup intent
        #
        #   @return [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::Member, nil]
        required :member, -> { WhopSDK::SetupIntentRequiresActionWebhookEvent::Data::Member }, nil?: true

        # @!attribute metadata
        #   The metadata associated with the setup intent
        #
        #   @return [Hash{Symbol=>Object}, nil]
        required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

        # @!attribute payment_token
        #   The payment token created during the setup, if available.
        #
        #   @return [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::PaymentToken, nil]
        required :payment_token,
                 -> { WhopSDK::SetupIntentRequiresActionWebhookEvent::Data::PaymentToken },
                 nil?: true

        # @!attribute status
        #   The status of the setup intent
        #
        #   @return [Symbol, WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::SetupIntentRequiresActionWebhookEvent::Data::Status }

        # @!method initialize(id:, checkout_configuration:, company:, created_at:, error_message:, member:, metadata:, payment_token:, status:)
        #   An object representing a setup intent, which is a flow for allowing a customer
        #   to add a payment method to their account without making a purchase.
        #
        #   @param id [String] The setup intent ID
        #
        #   @param checkout_configuration [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::CheckoutConfiguration, nil] The checkout configuration associated with the setup intent
        #
        #   @param company [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::Company, nil] The company of the setup intent
        #
        #   @param created_at [Time] The datetime the payment was created
        #
        #   @param error_message [String, nil] The error message, if any.
        #
        #   @param member [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::Member, nil] The member connected to the setup intent
        #
        #   @param metadata [Hash{Symbol=>Object}, nil] The metadata associated with the setup intent
        #
        #   @param payment_token [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::PaymentToken, nil] The payment token created during the setup, if available.
        #
        #   @param status [Symbol, WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::Status] The status of the setup intent

        # @see WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data#checkout_configuration
        class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the checkout configuration
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The checkout configuration associated with the setup intent
          #
          #   @param id [String] The ID of the checkout configuration
        end

        # @see WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data#company
        class Company < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID (tag) of the company.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The company of the setup intent
          #
          #   @param id [String] The ID (tag) of the company.
        end

        # @see WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data#member
        class Member < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the member
          #
          #   @return [String]
          required :id, String

          # @!attribute user
          #   The user for this member, if any.
          #
          #   @return [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::Member::User, nil]
          required :user,
                   -> {
                     WhopSDK::SetupIntentRequiresActionWebhookEvent::Data::Member::User
                   },
                   nil?: true

          # @!method initialize(id:, user:)
          #   The member connected to the setup intent
          #
          #   @param id [String] The ID of the member
          #
          #   @param user [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::Member::User, nil] The user for this member, if any.

          # @see WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::Member#user
          class User < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The internal ID of the user account.
            #
            #   @return [String]
            required :id, String

            # @!attribute email
            #   The digital mailing address of the user.
            #
            #   @return [String, nil]
            required :email, String, nil?: true

            # @!attribute name
            #   The user's full name.
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!attribute username
            #   The whop username.
            #
            #   @return [String]
            required :username, String

            # @!method initialize(id:, email:, name:, username:)
            #   The user for this member, if any.
            #
            #   @param id [String] The internal ID of the user account.
            #
            #   @param email [String, nil] The digital mailing address of the user.
            #
            #   @param name [String, nil] The user's full name.
            #
            #   @param username [String] The whop username.
          end
        end

        # @see WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data#payment_token
        class PaymentToken < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the payment token
          #
          #   @return [String]
          required :id, String

          # @!attribute card
          #   The card data associated with the payment token, if its a debit or credit card
          #   token.
          #
          #   @return [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::PaymentToken::Card, nil]
          required :card,
                   -> { WhopSDK::SetupIntentRequiresActionWebhookEvent::Data::PaymentToken::Card },
                   nil?: true

          # @!attribute created_at
          #   The date and time the payment token was created
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute payment_method_type
          #   The payment method type of the payment token
          #
          #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
          required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

          # @!method initialize(id:, card:, created_at:, payment_method_type:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::PaymentToken} for
          #   more details.
          #
          #   The payment token created during the setup, if available.
          #
          #   @param id [String] The ID of the payment token
          #
          #   @param card [WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::PaymentToken::Card, nil] The card data associated with the payment token, if its a debit or credit card t
          #
          #   @param created_at [Time] The date and time the payment token was created
          #
          #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The payment method type of the payment token

          # @see WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data::PaymentToken#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute brand
            #   Possible card brands that a payment token can have
            #
            #   @return [Symbol, WhopSDK::Models::CardBrands, nil]
            required :brand, enum: -> { WhopSDK::CardBrands }, nil?: true

            # @!attribute exp_month
            #   Card expiration month, like 03 for March.
            #
            #   @return [Integer, nil]
            required :exp_month, Integer, nil?: true

            # @!attribute exp_year
            #   Card expiration year, like 27 for 2027.
            #
            #   @return [Integer, nil]
            required :exp_year, Integer, nil?: true

            # @!attribute last4
            #   Last four digits of the card.
            #
            #   @return [String, nil]
            required :last4, String, nil?: true

            # @!method initialize(brand:, exp_month:, exp_year:, last4:)
            #   The card data associated with the payment token, if its a debit or credit card
            #   token.
            #
            #   @param brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
            #
            #   @param exp_month [Integer, nil] Card expiration month, like 03 for March.
            #
            #   @param exp_year [Integer, nil] Card expiration year, like 27 for 2027.
            #
            #   @param last4 [String, nil] Last four digits of the card.
          end
        end

        # The status of the setup intent
        #
        # @see WhopSDK::Models::SetupIntentRequiresActionWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          PROCESSING = :processing
          SUCCEEDED = :succeeded
          CANCELED = :canceled
          REQUIRES_ACTION = :requires_action

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
