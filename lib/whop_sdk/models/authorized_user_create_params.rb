# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AuthorizedUsers#create
    class AuthorizedUserCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to add the authorized user to.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute role
      #   The role to assign to the authorized user within the company. Supported roles:
      #   'moderator', 'sales_manager'.
      #
      #   @return [Symbol, WhopSDK::Models::AuthorizedUserRoles]
      required :role, enum: -> { WhopSDK::AuthorizedUserRoles }

      # @!attribute user_id
      #   The ID of the user to add as an authorized user.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute send_emails
      #   Whether to send notification emails to the user on creation.
      #
      #   @return [Boolean, nil]
      optional :send_emails, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(company_id:, role:, user_id:, send_emails: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AuthorizedUserCreateParams} for more details.
      #
      #   @param company_id [String] The ID of the company to add the authorized user to.
      #
      #   @param role [Symbol, WhopSDK::Models::AuthorizedUserRoles] The role to assign to the authorized user within the company. Supported roles: '
      #
      #   @param user_id [String] The ID of the user to add as an authorized user.
      #
      #   @param send_emails [Boolean, nil] Whether to send notification emails to the user on creation.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
