# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#update
    class VerificationUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute verification_id
      #
      #   @return [String]
      required :verification_id, String

      # @!attribute business_address
      #   The business address.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :business_address, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute business_name
      #   The business name.
      #
      #   @return [String, nil]
      optional :business_name, String

      # @!attribute business_structure
      #   The business structure.
      #
      #   @return [String, nil]
      optional :business_structure, String

      # @!attribute country
      #   The country code.
      #
      #   @return [String, nil]
      optional :country, String

      # @!attribute date_of_birth
      #   The date of birth.
      #
      #   @return [String, nil]
      optional :date_of_birth, String

      # @!attribute first_name
      #   The first name on the verification.
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute last_name
      #   The last name on the verification.
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!attribute personal_address
      #   The personal address.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :personal_address, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute rfis
      #   RFI responses. Each entry must include id and a value, address, or files
      #   payload.
      #
      #   @return [Array<WhopSDK::Models::VerificationUpdateParams::Rfi>, nil]
      optional :rfis, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::VerificationUpdateParams::Rfi] }

      # @!method initialize(verification_id:, business_address: nil, business_name: nil, business_structure: nil, country: nil, date_of_birth: nil, first_name: nil, last_name: nil, personal_address: nil, rfis: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::VerificationUpdateParams} for more details.
      #
      #   @param verification_id [String]
      #
      #   @param business_address [Hash{Symbol=>Object}] The business address.
      #
      #   @param business_name [String] The business name.
      #
      #   @param business_structure [String] The business structure.
      #
      #   @param country [String] The country code.
      #
      #   @param date_of_birth [String] The date of birth.
      #
      #   @param first_name [String] The first name on the verification.
      #
      #   @param last_name [String] The last name on the verification.
      #
      #   @param personal_address [Hash{Symbol=>Object}] The personal address.
      #
      #   @param rfis [Array<WhopSDK::Models::VerificationUpdateParams::Rfi>] RFI responses. Each entry must include id and a value, address, or files payload
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Rfi < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The RFI tag (paa\_\*).
        #
        #   @return [String]
        required :id, String

        # @!attribute address
        #   Address payload for address RFIs.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :address, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

        # @!attribute files
        #   File upload payload for document RFIs.
        #
        #   @return [Array<Object>, nil]
        optional :files, WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]

        # @!attribute value
        #   The value for text/date/phone RFIs.
        #
        #   @return [String, nil]
        optional :value, String

        # @!attribute value_type
        #   Defaults to raw.
        #
        #   @return [Symbol, WhopSDK::Models::VerificationUpdateParams::Rfi::ValueType, nil]
        optional :value_type, enum: -> { WhopSDK::VerificationUpdateParams::Rfi::ValueType }

        # @!method initialize(id:, address: nil, files: nil, value: nil, value_type: nil)
        #   @param id [String] The RFI tag (paa\_\*).
        #
        #   @param address [Hash{Symbol=>Object}] Address payload for address RFIs.
        #
        #   @param files [Array<Object>] File upload payload for document RFIs.
        #
        #   @param value [String] The value for text/date/phone RFIs.
        #
        #   @param value_type [Symbol, WhopSDK::Models::VerificationUpdateParams::Rfi::ValueType] Defaults to raw.

        # Defaults to raw.
        #
        # @see WhopSDK::Models::VerificationUpdateParams::Rfi#value_type
        module ValueType
          extend WhopSDK::Internal::Type::Enum

          RAW = :raw
          VAULT_TOKEN = :vault_token

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
