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
      #   The converted member, if any.
      #
      #   @return [WhopSDK::Models::LeadListResponse::Member, nil]
      required :member, -> { WhopSDK::Models::LeadListResponse::Member }, nil?: true

      # @!attribute metadata
      #   Custom metadata for the lead.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute product
      #   The access pass the lead is interested in, if available.
      #
      #   @return [WhopSDK::Models::LeadListResponse::Product, nil]
      required :product, -> { WhopSDK::Models::LeadListResponse::Product }, nil?: true

      # @!attribute referrer
      #   The referrer URL that brought this lead.
      #
      #   @return [String, nil]
      required :referrer, String, nil?: true

      # @!attribute updated_at
      #   The datetime the lead was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user who is the lead.
      #
      #   @return [WhopSDK::Models::LeadListResponse::User]
      required :user, -> { WhopSDK::Models::LeadListResponse::User }

      # @!method initialize(id:, created_at:, member:, metadata:, product:, referrer:, updated_at:, user:)
      #   An object representing a lead (someone who is interested in a whop).
      #
      #   @param id [String] The unique identifier for the lead.
      #
      #   @param created_at [Time] The datetime the lead was created.
      #
      #   @param member [WhopSDK::Models::LeadListResponse::Member, nil] The converted member, if any.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom metadata for the lead.
      #
      #   @param product [WhopSDK::Models::LeadListResponse::Product, nil] The access pass the lead is interested in, if available.
      #
      #   @param referrer [String, nil] The referrer URL that brought this lead.
      #
      #   @param updated_at [Time] The datetime the lead was last updated.
      #
      #   @param user [WhopSDK::Models::LeadListResponse::User] The user who is the lead.

      # @see WhopSDK::Models::LeadListResponse#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company member.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The converted member, if any.
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
        #   The title of the product. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The access pass the lead is interested in, if available.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end

      # @see WhopSDK::Models::LeadListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The email of the user
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, email:, name:, username:)
        #   The user who is the lead.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param email [String, nil] The email of the user
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
