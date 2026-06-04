# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::IdentityProfiles#create
    class IdentityProfileCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute kind
      #   Which slot to verify: 'individual' (KYC) or 'business' (KYB).
      #
      #   @return [Symbol, WhopSDK::Models::IdentityProfileKind]
      required :kind, enum: -> { WhopSDK::IdentityProfileKind }

      # @!attribute ledger_account_id
      #   The ID of the LedgerAccount to verify (typically a company's primary ledger).
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute address_city
      #   Optional pre-fill claim — city.
      #
      #   @return [String, nil]
      optional :address_city, String, nil?: true

      # @!attribute address_line1
      #   Optional pre-fill claim — street address line 1.
      #
      #   @return [String, nil]
      optional :address_line1, String, nil?: true

      # @!attribute address_postal_code
      #   Optional pre-fill claim — postal code.
      #
      #   @return [String, nil]
      optional :address_postal_code, String, nil?: true

      # @!attribute address_state
      #   Optional pre-fill claim — state/region.
      #
      #   @return [String, nil]
      optional :address_state, String, nil?: true

      # @!attribute country
      #   Optional pre-fill claim (ISO2 or ISO3 country code).
      #
      #   @return [String, nil]
      optional :country, String, nil?: true

      # @!attribute date_of_birth
      #   Optional pre-fill claim (ISO date, e.g. 1990-05-15).
      #
      #   @return [String, nil]
      optional :date_of_birth, String, nil?: true

      # @!attribute first_name
      #   Optional pre-fill claim.
      #
      #   @return [String, nil]
      optional :first_name, String, nil?: true

      # @!attribute last_name
      #   Optional pre-fill claim.
      #
      #   @return [String, nil]
      optional :last_name, String, nil?: true

      # @!attribute phone
      #   Optional pre-fill claim.
      #
      #   @return [String, nil]
      optional :phone, String, nil?: true

      # @!attribute restart
      #   Force a fresh verification session, abandoning any session already in flight for
      #   this slot. Defaults to false, which resumes the in-flight session if one exists
      #   (avoiding duplicate Sumsub sessions).
      #
      #   @return [Boolean, nil]
      optional :restart, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(kind:, ledger_account_id:, address_city: nil, address_line1: nil, address_postal_code: nil, address_state: nil, country: nil, date_of_birth: nil, first_name: nil, last_name: nil, phone: nil, restart: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::IdentityProfileCreateParams} for more details.
      #
      #   @param kind [Symbol, WhopSDK::Models::IdentityProfileKind] Which slot to verify: 'individual' (KYC) or 'business' (KYB).
      #
      #   @param ledger_account_id [String] The ID of the LedgerAccount to verify (typically a company's primary ledger).
      #
      #   @param address_city [String, nil] Optional pre-fill claim — city.
      #
      #   @param address_line1 [String, nil] Optional pre-fill claim — street address line 1.
      #
      #   @param address_postal_code [String, nil] Optional pre-fill claim — postal code.
      #
      #   @param address_state [String, nil] Optional pre-fill claim — state/region.
      #
      #   @param country [String, nil] Optional pre-fill claim (ISO2 or ISO3 country code).
      #
      #   @param date_of_birth [String, nil] Optional pre-fill claim (ISO date, e.g. 1990-05-15).
      #
      #   @param first_name [String, nil] Optional pre-fill claim.
      #
      #   @param last_name [String, nil] Optional pre-fill claim.
      #
      #   @param phone [String, nil] Optional pre-fill claim.
      #
      #   @param restart [Boolean, nil] Force a fresh verification session, abandoning any session already in flight for
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
