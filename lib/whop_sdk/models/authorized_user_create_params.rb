# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AuthorizedUsers#create
    class AuthorizedUserCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The ID of the company to add the authorized user to.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute role
      #   The role to assign to the authorized user within the company. Supported roles:
      #   'moderator', 'sales_manager'.
      #
      #   @return [Symbol, WhopSDK::Models::AuthorizedUserCreateParams::Role]
      required :role, enum: -> { WhopSDK::AuthorizedUserCreateParams::Role }

      # @!attribute user_id
      #   The ID of the user to add as an authorized user.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute elevation
      #   Re-authentication proof required to perform this sensitive action.
      #
      #   @return [WhopSDK::Models::AuthorizedUserCreateParams::Elevation, nil]
      optional :elevation, -> { WhopSDK::AuthorizedUserCreateParams::Elevation }, nil?: true

      # @!attribute send_emails
      #   Whether to send notification emails to the user on creation.
      #
      #   @return [Boolean, nil]
      optional :send_emails, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(account_id:, role:, user_id:, elevation: nil, send_emails: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AuthorizedUserCreateParams} for more details.
      #
      #   @param account_id [String] The ID of the company to add the authorized user to.
      #
      #   @param role [Symbol, WhopSDK::Models::AuthorizedUserCreateParams::Role] The role to assign to the authorized user within the company. Supported roles: '
      #
      #   @param user_id [String] The ID of the user to add as an authorized user.
      #
      #   @param elevation [WhopSDK::Models::AuthorizedUserCreateParams::Elevation, nil] Re-authentication proof required to perform this sensitive action.
      #
      #   @param send_emails [Boolean, nil] Whether to send notification emails to the user on creation.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The role to assign to the authorized user within the company. Supported roles:
      # 'moderator', 'sales_manager'.
      module Role
        extend WhopSDK::Internal::Type::Enum

        OWNER = :owner
        ADMIN = :admin
        SALES_MANAGER = :sales_manager
        MODERATOR = :moderator
        ADVERTISER = :advertiser

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Elevation < WhopSDK::Internal::Type::BaseModel
        # @!attribute authenticator_data
        #   The WebAuthn authenticator data (base64).
        #
        #   @return [String, nil]
        optional :authenticator_data, String, nil?: true

        # @!attribute client_data_json
        #   The WebAuthn client data JSON (base64).
        #
        #   @return [String, nil]
        optional :client_data_json, String, nil?: true

        # @!attribute credential_id
        #   The WebAuthn credential ID (base64).
        #
        #   @return [String, nil]
        optional :credential_id, String, nil?: true

        # @!attribute email_code
        #   The 6-digit code emailed to the user.
        #
        #   @return [String, nil]
        optional :email_code, String, nil?: true

        # @!attribute signature
        #   The WebAuthn signature (base64).
        #
        #   @return [String, nil]
        optional :signature, String, nil?: true

        # @!attribute totp_code
        #   The 6-digit code from the authenticator app or SMS.
        #
        #   @return [String, nil]
        optional :totp_code, String, nil?: true

        # @!attribute use_finance_session
        #   Reuse an existing elevated session (for SMS/email 2FA users).
        #
        #   @return [Boolean, nil]
        optional :use_finance_session, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!method initialize(authenticator_data: nil, client_data_json: nil, credential_id: nil, email_code: nil, signature: nil, totp_code: nil, use_finance_session: nil)
        #   Re-authentication proof required to perform this sensitive action.
        #
        #   @param authenticator_data [String, nil] The WebAuthn authenticator data (base64).
        #
        #   @param client_data_json [String, nil] The WebAuthn client data JSON (base64).
        #
        #   @param credential_id [String, nil] The WebAuthn credential ID (base64).
        #
        #   @param email_code [String, nil] The 6-digit code emailed to the user.
        #
        #   @param signature [String, nil] The WebAuthn signature (base64).
        #
        #   @param totp_code [String, nil] The 6-digit code from the authenticator app or SMS.
        #
        #   @param use_finance_session [Boolean, nil] Reuse an existing elevated session (for SMS/email 2FA users).
      end
    end
  end
end
