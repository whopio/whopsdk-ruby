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

      # Whether to send notification emails to the user on creation.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_emails

      sig do
        params(
          company_id: String,
          role: WhopSDK::AuthorizedUserRoles::OrSymbol,
          user_id: String,
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
            send_emails: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
