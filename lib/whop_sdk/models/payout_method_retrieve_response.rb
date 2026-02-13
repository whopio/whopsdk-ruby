# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PayoutMethods#retrieve
    class PayoutMethodRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the payout token.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_reference
      #   A masked identifier for the payout destination, such as the last four digits of
      #   a bank account or an email address. Null if no reference is available.
      #
      #   @return [String, nil]
      required :account_reference, String, nil?: true

      # @!attribute company
      #   The company associated with this payout destination. Null if not linked to a
      #   specific company.
      #
      #   @return [WhopSDK::Models::PayoutMethodRetrieveResponse::Company, nil]
      required :company, -> { WhopSDK::Models::PayoutMethodRetrieveResponse::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the payout token was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The three-letter ISO currency code that payouts are delivered in for this
      #   destination.
      #
      #   @return [String]
      required :currency, String

      # @!attribute destination
      #   The payout destination configuration linked to this token. Null if not yet
      #   configured.
      #
      #   @return [WhopSDK::Models::PayoutMethodRetrieveResponse::Destination, nil]
      required :destination, -> { WhopSDK::Models::PayoutMethodRetrieveResponse::Destination }, nil?: true

      # @!attribute institution_name
      #   The name of the bank or financial institution receiving payouts. Null if not
      #   applicable or not provided.
      #
      #   @return [String, nil]
      required :institution_name, String, nil?: true

      # @!attribute is_default
      #   Whether this is the default payout destination for the associated payout
      #   account.
      #
      #   @return [Boolean]
      required :is_default, WhopSDK::Internal::Type::Boolean

      # @!attribute nickname
      #   A user-defined label to help identify this payout destination. Not sent to the
      #   provider. Null if no nickname has been set.
      #
      #   @return [String, nil]
      required :nickname, String, nil?: true

      # @!method initialize(id:, account_reference:, company:, created_at:, currency:, destination:, institution_name:, is_default:, nickname:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PayoutMethodRetrieveResponse} for more details.
      #
      #   A configured payout destination where a user receives earned funds, such as a
      #   bank account or digital wallet.
      #
      #   @param id [String] The unique identifier for the payout token.
      #
      #   @param account_reference [String, nil] A masked identifier for the payout destination, such as the last four digits of
      #
      #   @param company [WhopSDK::Models::PayoutMethodRetrieveResponse::Company, nil] The company associated with this payout destination. Null if not linked to a spe
      #
      #   @param created_at [Time] The datetime the payout token was created.
      #
      #   @param currency [String] The three-letter ISO currency code that payouts are delivered in for this destin
      #
      #   @param destination [WhopSDK::Models::PayoutMethodRetrieveResponse::Destination, nil] The payout destination configuration linked to this token. Null if not yet confi
      #
      #   @param institution_name [String, nil] The name of the bank or financial institution receiving payouts. Null if not app
      #
      #   @param is_default [Boolean] Whether this is the default payout destination for the associated payout account
      #
      #   @param nickname [String, nil] A user-defined label to help identify this payout destination. Not sent to the p

      # @see WhopSDK::Models::PayoutMethodRetrieveResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company associated with this payout destination. Null if not linked to a
        #   specific company.
        #
        #   @param id [String] The unique identifier for the company.
      end

      # @see WhopSDK::Models::PayoutMethodRetrieveResponse#destination
      class Destination < WhopSDK::Internal::Type::BaseModel
        # @!attribute category
        #   The category of the payout destination
        #
        #   @return [Symbol, WhopSDK::Models::PayoutDestinationCategory]
        required :category, enum: -> { WhopSDK::PayoutDestinationCategory }

        # @!attribute country_code
        #   The country code of the payout destination
        #
        #   @return [String]
        required :country_code, String

        # @!attribute name
        #   The name of the payer associated with the payout destination
        #
        #   @return [String]
        required :name, String

        # @!method initialize(category:, country_code:, name:)
        #   The payout destination configuration linked to this token. Null if not yet
        #   configured.
        #
        #   @param category [Symbol, WhopSDK::Models::PayoutDestinationCategory] The category of the payout destination
        #
        #   @param country_code [String] The country code of the payout destination
        #
        #   @param name [String] The name of the payer associated with the payout destination
      end
    end
  end
end
