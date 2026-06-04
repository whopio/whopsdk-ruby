# typed: strong

module WhopSDK
  module Models
    class IdentityProfileCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::IdentityProfileCreateParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # Which slot to verify: 'individual' (KYC) or 'business' (KYB).
      sig { returns(WhopSDK::IdentityProfileKind::OrSymbol) }
      attr_accessor :kind

      # The ID of the LedgerAccount to verify (typically a company's primary ledger).
      sig { returns(String) }
      attr_accessor :ledger_account_id

      # Optional pre-fill claim — city.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_city

      # Optional pre-fill claim — street address line 1.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_line1

      # Optional pre-fill claim — postal code.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_postal_code

      # Optional pre-fill claim — state/region.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_state

      # Optional pre-fill claim (ISO2 or ISO3 country code).
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      # Optional pre-fill claim (ISO date, e.g. 1990-05-15).
      sig { returns(T.nilable(String)) }
      attr_accessor :date_of_birth

      # Optional pre-fill claim.
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      # Optional pre-fill claim.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      # Optional pre-fill claim.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      # Force a fresh verification session, abandoning any session already in flight for
      # this slot. Defaults to false, which resumes the in-flight session if one exists
      # (avoiding duplicate Sumsub sessions).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :restart

      sig do
        params(
          kind: WhopSDK::IdentityProfileKind::OrSymbol,
          ledger_account_id: String,
          address_city: T.nilable(String),
          address_line1: T.nilable(String),
          address_postal_code: T.nilable(String),
          address_state: T.nilable(String),
          country: T.nilable(String),
          date_of_birth: T.nilable(String),
          first_name: T.nilable(String),
          last_name: T.nilable(String),
          phone: T.nilable(String),
          restart: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Which slot to verify: 'individual' (KYC) or 'business' (KYB).
        kind:,
        # The ID of the LedgerAccount to verify (typically a company's primary ledger).
        ledger_account_id:,
        # Optional pre-fill claim — city.
        address_city: nil,
        # Optional pre-fill claim — street address line 1.
        address_line1: nil,
        # Optional pre-fill claim — postal code.
        address_postal_code: nil,
        # Optional pre-fill claim — state/region.
        address_state: nil,
        # Optional pre-fill claim (ISO2 or ISO3 country code).
        country: nil,
        # Optional pre-fill claim (ISO date, e.g. 1990-05-15).
        date_of_birth: nil,
        # Optional pre-fill claim.
        first_name: nil,
        # Optional pre-fill claim.
        last_name: nil,
        # Optional pre-fill claim.
        phone: nil,
        # Force a fresh verification session, abandoning any session already in flight for
        # this slot. Defaults to false, which resumes the in-flight session if one exists
        # (avoiding duplicate Sumsub sessions).
        restart: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            kind: WhopSDK::IdentityProfileKind::OrSymbol,
            ledger_account_id: String,
            address_city: T.nilable(String),
            address_line1: T.nilable(String),
            address_postal_code: T.nilable(String),
            address_state: T.nilable(String),
            country: T.nilable(String),
            date_of_birth: T.nilable(String),
            first_name: T.nilable(String),
            last_name: T.nilable(String),
            phone: T.nilable(String),
            restart: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
