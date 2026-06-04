# typed: strong

module WhopSDK
  module Resources
    # Identity profiles
    class IdentityProfiles
      # Kicks off an identity verification flow for a LedgerAccount, decoupled from any
      # specific product.
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
        ).returns(WhopSDK::Models::IdentityProfileCreateResponse)
      end
      def create(
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

      # Retrieves the details of an existing identity profile.
      #
      # Required permissions:
      #
      # - `identity:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::IdentityProfile)
      end
      def retrieve(
        # The unique identifier of the identity profile (idpf_xxx).
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of identity profiles. When company_id is provided,
      # lists IPs currently linked to that company's ledger. When omitted, lists IPs
      # linked to any ledger the actor can read (including child companies under a
      # parent).
      #
      # Required permissions:
      #
      # - `identity:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          profile_type: T.nilable(WhopSDK::IdentityProfileKind::OrSymbol),
          status: T.nilable(WhopSDK::IdentityProfileStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::IdentityProfileListResponse
          ]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to filter to. When omitted, returns IPs
        # across all ledgers the actor can read.
        company_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The kind of identity profile (individual vs business).
        profile_type: nil,
        # Derived verification status for an identity profile.
        status: nil,
        request_options: {}
      )
      end

      # Attaches an existing IdentityProfile to a LedgerAccount (identity reuse).
      sig do
        params(
          identity_profile_id: String,
          ledger_account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::IdentityProfile)
      end
      def attach(
        # The ID of the IdentityProfile to attach.
        identity_profile_id,
        # The ID of the LedgerAccount to attach the identity profile to.
        ledger_account_id:,
        request_options: {}
      )
      end

      # Returns a list of verifications attached to an identity profile, ordered by most
      # recent first.
      #
      # Required permissions:
      #
      # - `identity:read`
      sig do
        params(
          id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::IdentityProfileListVerificationsResponse
          ]
        )
      end
      def list_verifications(
        # The unique identifier of the identity profile (idpf_xxx).
        id,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Unlinks an IdentityProfile from a LedgerAccount (flips the matching link to
      # is_current=false).
      sig do
        params(
          id: String,
          ledger_account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::IdentityProfile)
      end
      def unlink(
        # The ID of the IdentityProfile to unlink.
        id,
        # The ID of the LedgerAccount to unlink the identity profile from.
        ledger_account_id:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
