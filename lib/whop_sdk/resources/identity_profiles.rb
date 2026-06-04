# frozen_string_literal: true

module WhopSDK
  module Resources
    # Identity profiles
    class IdentityProfiles
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::IdentityProfileCreateParams} for more details.
      #
      # Kicks off an identity verification flow for a LedgerAccount, decoupled from any
      # specific product.
      #
      # @overload create(kind:, ledger_account_id:, address_city: nil, address_line1: nil, address_postal_code: nil, address_state: nil, country: nil, date_of_birth: nil, first_name: nil, last_name: nil, phone: nil, restart: nil, request_options: {})
      #
      # @param kind [Symbol, WhopSDK::Models::IdentityProfileKind] Which slot to verify: 'individual' (KYC) or 'business' (KYB).
      #
      # @param ledger_account_id [String] The ID of the LedgerAccount to verify (typically a company's primary ledger).
      #
      # @param address_city [String, nil] Optional pre-fill claim — city.
      #
      # @param address_line1 [String, nil] Optional pre-fill claim — street address line 1.
      #
      # @param address_postal_code [String, nil] Optional pre-fill claim — postal code.
      #
      # @param address_state [String, nil] Optional pre-fill claim — state/region.
      #
      # @param country [String, nil] Optional pre-fill claim (ISO2 or ISO3 country code).
      #
      # @param date_of_birth [String, nil] Optional pre-fill claim (ISO date, e.g. 1990-05-15).
      #
      # @param first_name [String, nil] Optional pre-fill claim.
      #
      # @param last_name [String, nil] Optional pre-fill claim.
      #
      # @param phone [String, nil] Optional pre-fill claim.
      #
      # @param restart [Boolean, nil] Force a fresh verification session, abandoning any session already in flight for
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::IdentityProfileCreateResponse]
      #
      # @see WhopSDK::Models::IdentityProfileCreateParams
      def create(params)
        parsed, options = WhopSDK::IdentityProfileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "identity_profiles",
          body: parsed,
          model: WhopSDK::Models::IdentityProfileCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing identity profile.
      #
      # Required permissions:
      #
      # - `identity:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the identity profile (idpf_xxx).
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::IdentityProfile]
      #
      # @see WhopSDK::Models::IdentityProfileRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["identity_profiles/%1$s", id],
          model: WhopSDK::IdentityProfile,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::IdentityProfileListParams} for more details.
      #
      # Returns a paginated list of identity profiles. When company_id is provided,
      # lists IPs currently linked to that company's ledger. When omitted, lists IPs
      # linked to any ledger the actor can read (including child companies under a
      # parent).
      #
      # Required permissions:
      #
      # - `identity:read`
      #
      # @overload list(after: nil, before: nil, company_id: nil, first: nil, last: nil, profile_type: nil, status: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] The unique identifier of the company to filter to. When omitted, returns IPs acr
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param profile_type [Symbol, WhopSDK::Models::IdentityProfileKind, nil] The kind of identity profile (individual vs business).
      #
      # @param status [Symbol, WhopSDK::Models::IdentityProfileStatus, nil] Derived verification status for an identity profile.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::IdentityProfileListResponse>]
      #
      # @see WhopSDK::Models::IdentityProfileListParams
      def list(params = {})
        parsed, options = WhopSDK::IdentityProfileListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "identity_profiles",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::IdentityProfileListResponse,
          options: options
        )
      end

      # Attaches an existing IdentityProfile to a LedgerAccount (identity reuse).
      #
      # @overload attach(identity_profile_id, ledger_account_id:, request_options: {})
      #
      # @param identity_profile_id [String] The ID of the IdentityProfile to attach.
      #
      # @param ledger_account_id [String] The ID of the LedgerAccount to attach the identity profile to.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::IdentityProfile]
      #
      # @see WhopSDK::Models::IdentityProfileAttachParams
      def attach(identity_profile_id, params)
        parsed, options = WhopSDK::IdentityProfileAttachParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["identity_profiles/%1$s/attach", identity_profile_id],
          body: parsed,
          model: WhopSDK::IdentityProfile,
          options: options
        )
      end

      # Returns a list of verifications attached to an identity profile, ordered by most
      # recent first.
      #
      # Required permissions:
      #
      # - `identity:read`
      #
      # @overload list_verifications(id, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the identity profile (idpf_xxx).
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::IdentityProfileListVerificationsResponse>]
      #
      # @see WhopSDK::Models::IdentityProfileListVerificationsParams
      def list_verifications(id, params = {})
        parsed, options = WhopSDK::IdentityProfileListVerificationsParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["identity_profiles/%1$s/verifications", id],
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::IdentityProfileListVerificationsResponse,
          options: options
        )
      end

      # Unlinks an IdentityProfile from a LedgerAccount (flips the matching link to
      # is_current=false).
      #
      # @overload unlink(id, ledger_account_id:, request_options: {})
      #
      # @param id [String] The ID of the IdentityProfile to unlink.
      #
      # @param ledger_account_id [String] The ID of the LedgerAccount to unlink the identity profile from.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::IdentityProfile]
      #
      # @see WhopSDK::Models::IdentityProfileUnlinkParams
      def unlink(id, params)
        parsed, options = WhopSDK::IdentityProfileUnlinkParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :delete,
          path: ["identity_profiles/%1$s", id],
          query: query,
          model: WhopSDK::IdentityProfile,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
