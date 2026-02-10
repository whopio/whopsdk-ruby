# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SetupIntents#retrieve
    class SetupIntent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the setup intent.
      #
      #   @return [String]
      required :id, String

      # @!attribute checkout_configuration
      #   The checkout session configuration associated with this setup intent. Null if no
      #   checkout session was used.
      #
      #   @return [WhopSDK::Models::SetupIntent::CheckoutConfiguration, nil]
      required :checkout_configuration, -> { WhopSDK::SetupIntent::CheckoutConfiguration }, nil?: true

      # @!attribute company
      #   The company that initiated this setup intent. Null if the company has been
      #   deleted.
      #
      #   @return [WhopSDK::Models::SetupIntent::Company, nil]
      required :company, -> { WhopSDK::SetupIntent::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the setup intent was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute error_message
      #   A human-readable error message explaining why the setup intent failed. Null if
      #   no error occurred.
      #
      #   @return [String, nil]
      required :error_message, String, nil?: true

      # @!attribute member
      #   The company member associated with this setup intent. Null if the user is not a
      #   member.
      #
      #   @return [WhopSDK::Models::SetupIntent::Member, nil]
      required :member, -> { WhopSDK::SetupIntent::Member }, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs attached to this setup intent. Null if no metadata was
      #   provided.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute payment_method
      #   The saved payment method created by this setup intent. Null if the setup has not
      #   completed successfully.
      #
      #   @return [WhopSDK::Models::SetupIntent::PaymentMethod, nil]
      required :payment_method, -> { WhopSDK::SetupIntent::PaymentMethod }, nil?: true

      # @!attribute status
      #   The current status of the setup intent.
      #
      #   @return [Symbol, WhopSDK::Models::SetupIntentStatus]
      required :status, enum: -> { WhopSDK::SetupIntentStatus }

      # @!method initialize(id:, checkout_configuration:, company:, created_at:, error_message:, member:, metadata:, payment_method:, status:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SetupIntent} for more details.
      #
      #   A setup intent allows a user to save a payment method for future use without
      #   making an immediate purchase.
      #
      #   @param id [String] The unique identifier for the setup intent.
      #
      #   @param checkout_configuration [WhopSDK::Models::SetupIntent::CheckoutConfiguration, nil] The checkout session configuration associated with this setup intent. Null if no
      #
      #   @param company [WhopSDK::Models::SetupIntent::Company, nil] The company that initiated this setup intent. Null if the company has been delet
      #
      #   @param created_at [Time] The datetime the setup intent was created.
      #
      #   @param error_message [String, nil] A human-readable error message explaining why the setup intent failed. Null if n
      #
      #   @param member [WhopSDK::Models::SetupIntent::Member, nil] The company member associated with this setup intent. Null if the user is not a
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value pairs attached to this setup intent. Null if no metadata was pr
      #
      #   @param payment_method [WhopSDK::Models::SetupIntent::PaymentMethod, nil] The saved payment method created by this setup intent. Null if the setup has not
      #
      #   @param status [Symbol, WhopSDK::Models::SetupIntentStatus] The current status of the setup intent.

      # @see WhopSDK::Models::SetupIntent#checkout_configuration
      class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the checkout session.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The checkout session configuration associated with this setup intent. Null if no
        #   checkout session was used.
        #
        #   @param id [String] The unique identifier for the checkout session.
      end

      # @see WhopSDK::Models::SetupIntent#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company that initiated this setup intent. Null if the company has been
        #   deleted.
        #
        #   @param id [String] The unique identifier for the company.
      end

      # @see WhopSDK::Models::SetupIntent#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company member.
        #
        #   @return [String]
        required :id, String

        # @!attribute user
        #   The user for this member, if any.
        #
        #   @return [WhopSDK::Models::SetupIntent::Member::User, nil]
        required :user, -> { WhopSDK::SetupIntent::Member::User }, nil?: true

        # @!method initialize(id:, user:)
        #   The company member associated with this setup intent. Null if the user is not a
        #   member.
        #
        #   @param id [String] The unique identifier for the company member.
        #
        #   @param user [WhopSDK::Models::SetupIntent::Member::User, nil] The user for this member, if any.

        # @see WhopSDK::Models::SetupIntent::Member#user
        class User < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the company member user.
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
          #   @param id [String] The unique identifier for the company member user.
          #
          #   @param email [String, nil] The digital mailing address of the user.
          #
          #   @param name [String, nil] The user's full name.
          #
          #   @param username [String] The whop username.
        end
      end

      # @see WhopSDK::Models::SetupIntent#payment_method
      class PaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment token.
        #
        #   @return [String]
        required :id, String

        # @!attribute card
        #   The card data associated with the payment method, if its a debit or credit card.
        #
        #   @return [WhopSDK::Models::SetupIntent::PaymentMethod::Card, nil]
        required :card, -> { WhopSDK::SetupIntent::PaymentMethod::Card }, nil?: true

        # @!attribute created_at
        #   The datetime the payment token was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payment_method_type
        #   The payment method type of the payment method
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!method initialize(id:, card:, created_at:, payment_method_type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::SetupIntent::PaymentMethod} for more details.
        #
        #   The saved payment method created by this setup intent. Null if the setup has not
        #   completed successfully.
        #
        #   @param id [String] The unique identifier for the payment token.
        #
        #   @param card [WhopSDK::Models::SetupIntent::PaymentMethod::Card, nil] The card data associated with the payment method, if its a debit or credit card.
        #
        #   @param created_at [Time] The datetime the payment token was created.
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The payment method type of the payment method

        # @see WhopSDK::Models::SetupIntent::PaymentMethod#card
        class Card < WhopSDK::Internal::Type::BaseModel
          # @!attribute brand
          #   Possible card brands that a payment token can have
          #
          #   @return [Symbol, WhopSDK::Models::CardBrands, nil]
          required :brand, enum: -> { WhopSDK::CardBrands }, nil?: true

          # @!attribute exp_month
          #   The two-digit expiration month of the card (1-12). Null if not available.
          #
          #   @return [Integer, nil]
          required :exp_month, Integer, nil?: true

          # @!attribute exp_year
          #   The two-digit expiration year of the card (e.g., 27 for 2027). Null if not
          #   available.
          #
          #   @return [Integer, nil]
          required :exp_year, Integer, nil?: true

          # @!attribute last4
          #   The last four digits of the card number. Null if not available.
          #
          #   @return [String, nil]
          required :last4, String, nil?: true

          # @!method initialize(brand:, exp_month:, exp_year:, last4:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::SetupIntent::PaymentMethod::Card} for more details.
          #
          #   The card data associated with the payment method, if its a debit or credit card.
          #
          #   @param brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
          #
          #   @param exp_month [Integer, nil] The two-digit expiration month of the card (1-12). Null if not available.
          #
          #   @param exp_year [Integer, nil] The two-digit expiration year of the card (e.g., 27 for 2027). Null if not avail
          #
          #   @param last4 [String, nil] The last four digits of the card number. Null if not available.
        end
      end
    end
  end
end
