# typed: strong

module WhopSDK
  module Resources
    # Verifications
    class Verifications
      # Creates or resumes a verification session for an account.
      sig do
        params(
          account_id: String,
          address: T::Hash[Symbol, T.anything],
          country: String,
          date_of_birth: String,
          first_name: String,
          kind: WhopSDK::VerificationCreateParams::Kind::OrSymbol,
          last_name: String,
          phone: String,
          restart: T::Boolean,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationCreateResponse)
      end
      def create(
        # The account ID to verify.
        account_id:,
        # Pre-fill address (line1, city, state, postal_code).
        address: nil,
        # Pre-fill the country.
        country: nil,
        # Pre-fill the date of birth.
        date_of_birth: nil,
        # Pre-fill the first name.
        first_name: nil,
        # The verification type. Defaults to individual.
        kind: nil,
        # Pre-fill the last name.
        last_name: nil,
        # Pre-fill the phone number.
        phone: nil,
        # Whether to restart an in-flight verification.
        restart: nil,
        request_options: {}
      )
      end

      # Retrieves a single identity verification profile by ID, including verification
      # sessions and outstanding RFIs.
      sig do
        params(
          verification_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationRetrieveResponse)
      end
      def retrieve(
        # The ID of the verification, which will look like idpf\_******\*******
        verification_id,
        request_options: {}
      )
      end

      # Updates fields on an identity verification profile, or responds to outstanding
      # RFIs.
      sig do
        params(
          verification_id: String,
          business_address: T::Hash[Symbol, T.anything],
          business_name: String,
          business_structure: String,
          country: String,
          date_of_birth: String,
          first_name: String,
          last_name: String,
          personal_address: T::Hash[Symbol, T.anything],
          rfis: T::Array[WhopSDK::VerificationUpdateParams::Rfi::OrHash],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationUpdateResponse)
      end
      def update(
        # The ID of the verification, which will look like idpf\_******\*******
        verification_id,
        # The business address.
        business_address: nil,
        # The business name.
        business_name: nil,
        # The business structure.
        business_structure: nil,
        # The country code.
        country: nil,
        # The date of birth.
        date_of_birth: nil,
        # The first name on the verification.
        first_name: nil,
        # The last name on the verification.
        last_name: nil,
        # The personal address.
        personal_address: nil,
        # RFI responses. Each entry must include id and a value, address, or files
        # payload.
        rfis: nil,
        request_options: {}
      )
      end

      # Lists identity verification profiles visible to the credential.
      sig do
        params(
          account_id: String,
          page: Integer,
          per: Integer,
          profile_type: WhopSDK::VerificationListParams::ProfileType::OrSymbol,
          status: WhopSDK::VerificationListParams::Status::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationListResponse)
      end
      def list(
        # Filter verifications to a specific account.
        account_id: nil,
        # The page number to retrieve.
        page: nil,
        # The number of resources to return per page.
        per: nil,
        # Filter by profile type.
        profile_type: nil,
        # Filter by derived verification status.
        status: nil,
        request_options: {}
      )
      end

      # Soft-deletes an identity verification profile and unlinks it from all accounts.
      sig do
        params(
          verification_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationDeleteResponse)
      end
      def delete(
        # The ID of the verification, which will look like idpf\_******\*******
        verification_id,
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
