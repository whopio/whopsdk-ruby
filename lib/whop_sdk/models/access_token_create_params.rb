# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AccessTokens#create
    class AccessTokenCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute scoped_actions
      #   Array of desired scoped actions for the access token.
      #
      #   @return [Array<String>]
      required :scoped_actions, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute target_resource_id
      #   The ID of the target resource (Company or User) for which the access token is
      #   being created.
      #
      #   @return [String]
      required :target_resource_id, String

      # @!attribute target_resource_type
      #   The type of the target resource (Company or User).
      #
      #   @return [Symbol, WhopSDK::Models::AccessTokenCreateParams::TargetResourceType]
      required :target_resource_type, enum: -> { WhopSDK::AccessTokenCreateParams::TargetResourceType }

      # @!attribute expires_at
      #   The expiration timestamp for the access token. If not provided, a default
      #   expiration time will be used.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!method initialize(scoped_actions:, target_resource_id:, target_resource_type:, expires_at: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccessTokenCreateParams} for more details.
      #
      #   @param scoped_actions [Array<String>] Array of desired scoped actions for the access token.
      #
      #   @param target_resource_id [String] The ID of the target resource (Company or User) for which the access token is be
      #
      #   @param target_resource_type [Symbol, WhopSDK::Models::AccessTokenCreateParams::TargetResourceType] The type of the target resource (Company or User).
      #
      #   @param expires_at [Time, nil] The expiration timestamp for the access token. If not provided, a default expira
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The type of the target resource (Company or User).
      module TargetResourceType
        extend WhopSDK::Internal::Type::Enum

        COMPANY = :company
        PRODUCT = :product
        EXPERIENCE = :experience
        APP = :app
        USER = :user

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
