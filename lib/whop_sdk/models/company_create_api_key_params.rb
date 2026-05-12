# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#create_api_key
    class CompanyCreateAPIKeyParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute parent_company_id
      #
      #   @return [String]
      required :parent_company_id, String

      # @!attribute child_company_id
      #   The unique identifier of the connected account to create the API key for (e.g.
      #   'biz_xxx').
      #
      #   @return [String]
      required :child_company_id, String

      # @!attribute name
      #   A human-readable name for the API key, such as 'Production API Key'.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute permissions
      #   Granular permission statements defining which actions this API key can perform.
      #   Either permissions or role must be provided.
      #
      #   @return [Array<WhopSDK::Models::CompanyCreateAPIKeyParams::Permission>, nil]
      optional :permissions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CompanyCreateAPIKeyParams::Permission] },
               nil?: true

      # @!attribute role
      #   The different system roles that can be assigned.
      #
      #   @return [Symbol, WhopSDK::Models::CompanyCreateAPIKeyParams::Role, nil]
      optional :role, enum: -> { WhopSDK::CompanyCreateAPIKeyParams::Role }, nil?: true

      # @!method initialize(parent_company_id:, child_company_id:, name: nil, permissions: nil, role: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyCreateAPIKeyParams} for more details.
      #
      #   @param parent_company_id [String]
      #
      #   @param child_company_id [String] The unique identifier of the connected account to create the API key for (e.g. '
      #
      #   @param name [String, nil] A human-readable name for the API key, such as 'Production API Key'.
      #
      #   @param permissions [Array<WhopSDK::Models::CompanyCreateAPIKeyParams::Permission>, nil] Granular permission statements defining which actions this API key can perform.
      #
      #   @param role [Symbol, WhopSDK::Models::CompanyCreateAPIKeyParams::Role, nil] The different system roles that can be assigned.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Permission < WhopSDK::Internal::Type::BaseModel
        # @!attribute actions
        #   Actions covered by this statement
        #
        #   @return [Array<String>]
        required :actions, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute grant
        #   Whether the actions are granted or denied
        #
        #   @return [Boolean]
        required :grant, WhopSDK::Internal::Type::Boolean

        # @!attribute resources
        #   Resource identifiers. Can look like 'biz*xxxx' or 'biz_xxx|pass*_|exp*xxx' or
        #   'biz_xxx|app_xxx' or 'biz_xxx|pass_xxx|exp_xxx' or 'biz_xxx|pass_xxx' or
        #   'biz_xxx|pass*_'
        #
        #   @return [Array<String>]
        required :resources, WhopSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(actions:, grant:, resources:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CompanyCreateAPIKeyParams::Permission} for more details.
        #
        #   Input for a single permissions statement
        #
        #   @param actions [Array<String>] Actions covered by this statement
        #
        #   @param grant [Boolean] Whether the actions are granted or denied
        #
        #   @param resources [Array<String>] Resource identifiers. Can look like 'biz*xxxx' or 'biz_xxx|pass*\*|exp_xxx' or
        #   'b
      end

      # The different system roles that can be assigned.
      module Role
        extend WhopSDK::Internal::Type::Enum

        OWNER = :owner
        ADMIN = :admin
        MODERATOR = :moderator
        SALES_MANAGER = :sales_manager
        ADVERTISER = :advertiser

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
