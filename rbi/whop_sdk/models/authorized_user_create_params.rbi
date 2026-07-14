# typed: strong

module WhopSDK
  module Models
    class AuthorizedUserCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AuthorizedUserCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company to add the authorized user to.
      sig { returns(String) }
      attr_accessor :company_id

      # The role to assign to the authorized user within the company. Supported roles:
      # 'moderator', 'sales_manager'.
      sig { returns(WhopSDK::AuthorizedUserRoles::OrSymbol) }
      attr_accessor :role

      # The ID of the user to add as an authorized user.
      sig { returns(String) }
      attr_accessor :user_id

      # Re-authentication proof required to perform this sensitive action.
      sig { returns(T.nilable(WhopSDK::AuthorizedUserCreateParams::Elevation)) }
      attr_reader :elevation

      sig do
        params(
          elevation:
            T.nilable(WhopSDK::AuthorizedUserCreateParams::Elevation::OrHash)
        ).void
      end
      attr_writer :elevation

      # Whether to send notification emails to the user on creation.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_emails

      sig do
        params(
          company_id: String,
          role: WhopSDK::AuthorizedUserRoles::OrSymbol,
          user_id: String,
          elevation:
            T.nilable(WhopSDK::AuthorizedUserCreateParams::Elevation::OrHash),
          send_emails: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to add the authorized user to.
        company_id:,
        # The role to assign to the authorized user within the company. Supported roles:
        # 'moderator', 'sales_manager'.
        role:,
        # The ID of the user to add as an authorized user.
        user_id:,
        # Re-authentication proof required to perform this sensitive action.
        elevation: nil,
        # Whether to send notification emails to the user on creation.
        send_emails: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            role: WhopSDK::AuthorizedUserRoles::OrSymbol,
            user_id: String,
            elevation:
              T.nilable(WhopSDK::AuthorizedUserCreateParams::Elevation),
            send_emails: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Elevation < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AuthorizedUserCreateParams::Elevation,
              WhopSDK::Internal::AnyHash
            )
          end

        # The WebAuthn authenticator data (base64).
        sig { returns(T.nilable(String)) }
        attr_accessor :authenticator_data

        # The WebAuthn client data JSON (base64).
        sig { returns(T.nilable(String)) }
        attr_accessor :client_data_json

        # The WebAuthn credential ID (base64).
        sig { returns(T.nilable(String)) }
        attr_accessor :credential_id

        # The 6-digit code emailed to the user.
        sig { returns(T.nilable(String)) }
        attr_accessor :email_code

        # The WebAuthn signature (base64).
        sig { returns(T.nilable(String)) }
        attr_accessor :signature

        # The 6-digit code from the authenticator app or SMS.
        sig { returns(T.nilable(String)) }
        attr_accessor :totp_code

        # Reuse an existing elevated session (for SMS/email 2FA users).
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :use_finance_session

        # Re-authentication proof required to perform this sensitive action.
        sig do
          params(
            authenticator_data: T.nilable(String),
            client_data_json: T.nilable(String),
            credential_id: T.nilable(String),
            email_code: T.nilable(String),
            signature: T.nilable(String),
            totp_code: T.nilable(String),
            use_finance_session: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # The WebAuthn authenticator data (base64).
          authenticator_data: nil,
          # The WebAuthn client data JSON (base64).
          client_data_json: nil,
          # The WebAuthn credential ID (base64).
          credential_id: nil,
          # The 6-digit code emailed to the user.
          email_code: nil,
          # The WebAuthn signature (base64).
          signature: nil,
          # The 6-digit code from the authenticator app or SMS.
          totp_code: nil,
          # Reuse an existing elevated session (for SMS/email 2FA users).
          use_finance_session: nil
        )
        end

        sig do
          override.returns(
            {
              authenticator_data: T.nilable(String),
              client_data_json: T.nilable(String),
              credential_id: T.nilable(String),
              email_code: T.nilable(String),
              signature: T.nilable(String),
              totp_code: T.nilable(String),
              use_finance_session: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
