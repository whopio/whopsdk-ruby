# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#create
    class VerificationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The account ID to verify.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute address
      #   Pre-fill address (line1, city, state, postal_code).
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :address, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute country
      #   Pre-fill the country.
      #
      #   @return [String, nil]
      optional :country, String

      # @!attribute date_of_birth
      #   Pre-fill the date of birth.
      #
      #   @return [String, nil]
      optional :date_of_birth, String

      # @!attribute first_name
      #   Pre-fill the first name.
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute kind
      #   The verification type. Defaults to individual.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationCreateParams::Kind, nil]
      optional :kind, enum: -> { WhopSDK::VerificationCreateParams::Kind }

      # @!attribute last_name
      #   Pre-fill the last name.
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!attribute phone
      #   Pre-fill the phone number.
      #
      #   @return [String, nil]
      optional :phone, String

      # @!attribute restart
      #   Whether to restart an in-flight verification.
      #
      #   @return [Boolean, nil]
      optional :restart, WhopSDK::Internal::Type::Boolean

      # @!method initialize(account_id:, address: nil, country: nil, date_of_birth: nil, first_name: nil, kind: nil, last_name: nil, phone: nil, restart: nil, request_options: {})
      #   @param account_id [String] The account ID to verify.
      #
      #   @param address [Hash{Symbol=>Object}] Pre-fill address (line1, city, state, postal_code).
      #
      #   @param country [String] Pre-fill the country.
      #
      #   @param date_of_birth [String] Pre-fill the date of birth.
      #
      #   @param first_name [String] Pre-fill the first name.
      #
      #   @param kind [Symbol, WhopSDK::Models::VerificationCreateParams::Kind] The verification type. Defaults to individual.
      #
      #   @param last_name [String] Pre-fill the last name.
      #
      #   @param phone [String] Pre-fill the phone number.
      #
      #   @param restart [Boolean] Whether to restart an in-flight verification.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The verification type. Defaults to individual.
      module Kind
        extend WhopSDK::Internal::Type::Enum

        INDIVIDUAL = :individual
        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
