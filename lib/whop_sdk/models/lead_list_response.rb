# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Leads#list
    class LeadListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the lead.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The datetime the lead was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute member
      #   The company member record if this lead has converted into a paying customer.
      #   Null if the lead has not converted.
      #
      #   @return [WhopSDK::Models::LeadListResponse::Member, nil]
      required :member, -> { WhopSDK::Models::LeadListResponse::Member }, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs attached to this lead. Null if no metadata was provided.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute product
      #   The product the lead expressed interest in. Null if the lead is not associated
      #   with a specific product.
      #
      #   @return [WhopSDK::Models::LeadListResponse::Product, nil]
      required :product, -> { WhopSDK::Models::LeadListResponse::Product }, nil?: true

      # @!attribute referrer
      #   The URL of the page that referred this lead to the company. Null if no referrer
      #   was captured.
      #
      #   @return [String, nil]
      required :referrer, String, nil?: true

      # @!attribute updated_at
      #   The datetime the lead was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user account associated with this lead.
      #
      #   @return [WhopSDK::Models::LeadListResponse::User]
      required :user, -> { WhopSDK::Models::LeadListResponse::User }

      # @!method initialize(id:, created_at:, member:, metadata:, product:, referrer:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::LeadListResponse} for more details.
      #
      #   A prospective customer who has expressed interest in a company or product but
      #   has not yet purchased.
      #
      #   @param id [String] The unique identifier for the lead.
      #
      #   @param created_at [Time] The datetime the lead was created.
      #
      #   @param member [WhopSDK::Models::LeadListResponse::Member, nil] The company member record if this lead has converted into a paying customer. Nul
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value pairs attached to this lead. Null if no metadata was provided.
      #
      #   @param product [WhopSDK::Models::LeadListResponse::Product, nil] The product the lead expressed interest in. Null if the lead is not associated w
      #
      #   @param referrer [String, nil] The URL of the page that referred this lead to the company. Null if no referrer
      #
      #   @param updated_at [Time] The datetime the lead was last updated.
      #
      #   @param user [WhopSDK::Models::LeadListResponse::User] The user account associated with this lead.

      # @see WhopSDK::Models::LeadListResponse#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company member.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company member record if this lead has converted into a paying customer.
        #   Null if the lead has not converted.
        #
        #   @param id [String] The unique identifier for the company member.
      end

      # @see WhopSDK::Models::LeadListResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::LeadListResponse::Product} for more details.
        #
        #   The product the lead expressed interest in. Null if the lead is not associated
        #   with a specific product.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end

      # @see WhopSDK::Models::LeadListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The user's email address. Requires the member:email:read permission to access.
        #   Null if not authorized.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, email:, name:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::LeadListResponse::User} for more details.
        #
        #   The user account associated with this lead.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param email [String, nil] The user's email address. Requires the member:email:read permission to access. N
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
