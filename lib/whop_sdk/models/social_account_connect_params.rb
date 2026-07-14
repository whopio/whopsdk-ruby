# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SocialAccounts#connect
    class SocialAccountConnectParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute platform
      #   The platform to connect the social account on. Today, the supported option is
      #   `meta_business`.
      #
      #   @return [Symbol, WhopSDK::Models::SocialAccountConnectParams::Platform]
      required :platform, enum: -> { WhopSDK::SocialAccountConnectParams::Platform }

      # @!attribute account_id
      #   The Account (biz\_ identifier) to connect the social account for. An
      #   account-scoped API key may omit this to default to its own account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute redirect_url
      #   The Whop URL to redirect the user to after they finish connecting.
      #
      #   @return [String, nil]
      optional :redirect_url, String

      # @!attribute scopes
      #   Capabilities to grant for the connected social account. Use `advertise` when
      #   connecting a Meta Business account for ads.
      #
      #   @return [Array<Symbol, WhopSDK::Models::SocialAccountConnectParams::Scope>, nil]
      optional :scopes,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::SocialAccountConnectParams::Scope] }

      # @!method initialize(platform:, account_id: nil, redirect_url: nil, scopes: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SocialAccountConnectParams} for more details.
      #
      #   @param platform [Symbol, WhopSDK::Models::SocialAccountConnectParams::Platform] The platform to connect the social account on. Today, the supported option is `m
      #
      #   @param account_id [String] The Account (biz\_ identifier) to connect the social account for. An
      #   account-scop
      #
      #   @param redirect_url [String] The Whop URL to redirect the user to after they finish connecting.
      #
      #   @param scopes [Array<Symbol, WhopSDK::Models::SocialAccountConnectParams::Scope>] Capabilities to grant for the connected social account. Use `advertise` when con
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The platform to connect the social account on. Today, the supported option is
      # `meta_business`.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        META_BUSINESS = :meta_business

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Scope
        extend WhopSDK::Internal::Type::Enum

        ADVERTISE = :advertise

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
