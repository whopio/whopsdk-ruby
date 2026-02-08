# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SetupIntents#list
    class SetupIntentListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the setup intent.
      #
      #   @return [String]
      required :id, String

      # @!attribute checkout_configuration
      #   The checkout configuration associated with the setup intent
      #
      #   @return [WhopSDK::Models::SetupIntentListResponse::CheckoutConfiguration, nil]
      required :checkout_configuration,
               -> { WhopSDK::Models::SetupIntentListResponse::CheckoutConfiguration },
               nil?: true

      # @!attribute company
      #   The company of the setup intent
      #
      #   @return [WhopSDK::Models::SetupIntentListResponse::Company, nil]
      required :company, -> { WhopSDK::Models::SetupIntentListResponse::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the setup intent was created.
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
      #   @return [WhopSDK::Models::SetupIntentListResponse::Member, nil]
      required :member, -> { WhopSDK::Models::SetupIntentListResponse::Member }, nil?: true

      # @!attribute metadata
      #   The metadata associated with the setup intent
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute payment_method
      #   The payment method created during the setup, if available.
      #
      #   @return [WhopSDK::Models::SetupIntentListResponse::PaymentMethod, nil]
      required :payment_method, -> { WhopSDK::Models::SetupIntentListResponse::PaymentMethod }, nil?: true

      # @!attribute status
      #   The status of the setup intent
      #
      #   @return [Symbol, WhopSDK::Models::SetupIntentStatus]
      required :status, enum: -> { WhopSDK::SetupIntentStatus }

      # @!method initialize(id:, checkout_configuration:, company:, created_at:, error_message:, member:, metadata:, payment_method:, status:)
      #   A setup intent allows a user to save a payment method without making a purchase.
      #
      #   @param id [String] The unique identifier for the setup intent.
      #
      #   @param checkout_configuration [WhopSDK::Models::SetupIntentListResponse::CheckoutConfiguration, nil] The checkout configuration associated with the setup intent
      #
      #   @param company [WhopSDK::Models::SetupIntentListResponse::Company, nil] The company of the setup intent
      #
      #   @param created_at [Time] The datetime the setup intent was created.
      #
      #   @param error_message [String, nil] The error message, if any.
      #
      #   @param member [WhopSDK::Models::SetupIntentListResponse::Member, nil] The member connected to the setup intent
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] The metadata associated with the setup intent
      #
      #   @param payment_method [WhopSDK::Models::SetupIntentListResponse::PaymentMethod, nil] The payment method created during the setup, if available.
      #
      #   @param status [Symbol, WhopSDK::Models::SetupIntentStatus] The status of the setup intent

      # @see WhopSDK::Models::SetupIntentListResponse#checkout_configuration
      class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the checkout session.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The checkout configuration associated with the setup intent
        #
        #   @param id [String] The unique identifier for the checkout session.
      end

      # @see WhopSDK::Models::SetupIntentListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company of the setup intent
        #
        #   @param id [String] The unique identifier for the company.
      end

      # @see WhopSDK::Models::SetupIntentListResponse#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company member.
        #
        #   @return [String]
        required :id, String

        # @!attribute user
        #   The user for this member, if any.
        #
        #   @return [WhopSDK::Models::SetupIntentListResponse::Member::User, nil]
        required :user, -> { WhopSDK::Models::SetupIntentListResponse::Member::User }, nil?: true

        # @!method initialize(id:, user:)
        #   The member connected to the setup intent
        #
        #   @param id [String] The unique identifier for the company member.
        #
        #   @param user [WhopSDK::Models::SetupIntentListResponse::Member::User, nil] The user for this member, if any.

        # @see WhopSDK::Models::SetupIntentListResponse::Member#user
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

      # @see WhopSDK::Models::SetupIntentListResponse#payment_method
      class PaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment token.
        #
        #   @return [String]
        required :id, String

        # @!attribute card
        #   The card data associated with the payment method, if its a debit or credit card.
        #
        #   @return [WhopSDK::Models::SetupIntentListResponse::PaymentMethod::Card, nil]
        required :card, -> { WhopSDK::Models::SetupIntentListResponse::PaymentMethod::Card }, nil?: true

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
        #   {WhopSDK::Models::SetupIntentListResponse::PaymentMethod} for more details.
        #
        #   The payment method created during the setup, if available.
        #
        #   @param id [String] The unique identifier for the payment token.
        #
        #   @param card [WhopSDK::Models::SetupIntentListResponse::PaymentMethod::Card, nil] The card data associated with the payment method, if its a debit or credit card.
        #
        #   @param created_at [Time] The datetime the payment token was created.
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The payment method type of the payment method

        # @see WhopSDK::Models::SetupIntentListResponse::PaymentMethod#card
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
          #   The card data associated with the payment method, if its a debit or credit card.
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
    end
  end
end
