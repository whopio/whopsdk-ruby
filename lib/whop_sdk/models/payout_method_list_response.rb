# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PayoutMethods#list
    class PayoutMethodListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the payout token.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_reference
      #   A reference to identify the payout destination, such as the last 4 digits of an
      #   account number or an email address.
      #
      #   @return [String, nil]
      required :account_reference, String, nil?: true

      # @!attribute company
      #   The company associated with the payout token
      #
      #   @return [WhopSDK::Models::PayoutMethodListResponse::Company, nil]
      required :company, -> { WhopSDK::Models::PayoutMethodListResponse::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the payout token was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency code of the payout destination. This is the currency that payouts
      #   will be made in for this token.
      #
      #   @return [String]
      required :currency, String

      # @!attribute destination
      #   The payout destination associated with the payout token
      #
      #   @return [WhopSDK::Models::PayoutMethodListResponse::Destination, nil]
      required :destination, -> { WhopSDK::Models::PayoutMethodListResponse::Destination }, nil?: true

      # @!attribute institution_name
      #   The name of the bank or financial institution.
      #
      #   @return [String, nil]
      required :institution_name, String, nil?: true

      # @!attribute is_default
      #   Whether this payout token is the default for the payout account
      #
      #   @return [Boolean]
      required :is_default, WhopSDK::Internal::Type::Boolean

      # @!attribute nickname
      #   An optional nickname for the payout token to help the user identify it. This is
      #   not used by the provider and is only for the user's reference.
      #
      #   @return [String, nil]
      required :nickname, String, nil?: true

      # @!method initialize(id:, account_reference:, company:, created_at:, currency:, destination:, institution_name:, is_default:, nickname:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PayoutMethodListResponse} for more details.
      #
      #   An object representing an user's setup payout destination.
      #
      #   @param id [String] The unique identifier for the payout token.
      #
      #   @param account_reference [String, nil] A reference to identify the payout destination, such as the last 4 digits of an
      #
      #   @param company [WhopSDK::Models::PayoutMethodListResponse::Company, nil] The company associated with the payout token
      #
      #   @param created_at [Time] The datetime the payout token was created.
      #
      #   @param currency [String] The currency code of the payout destination. This is the currency that payouts w
      #
      #   @param destination [WhopSDK::Models::PayoutMethodListResponse::Destination, nil] The payout destination associated with the payout token
      #
      #   @param institution_name [String, nil] The name of the bank or financial institution.
      #
      #   @param is_default [Boolean] Whether this payout token is the default for the payout account
      #
      #   @param nickname [String, nil] An optional nickname for the payout token to help the user identify it. This is

      # @see WhopSDK::Models::PayoutMethodListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company associated with the payout token
        #
        #   @param id [String] The unique identifier for the company.
      end

      # @see WhopSDK::Models::PayoutMethodListResponse#destination
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
        #   The payout destination associated with the payout token
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
