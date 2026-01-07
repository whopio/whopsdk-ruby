# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Leads#retrieve
    class LeadRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the lead.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The timestamp of when the lead was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute member
      #   The converted member, if any.
      #
      #   @return [WhopSDK::Models::LeadRetrieveResponse::Member, nil]
      required :member, -> { WhopSDK::Models::LeadRetrieveResponse::Member }, nil?: true

      # @!attribute metadata
      #   Custom metadata for the lead.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute product
      #   The access pass the lead is interested in, if available.
      #
      #   @return [WhopSDK::Models::LeadRetrieveResponse::Product, nil]
      required :product, -> { WhopSDK::Models::LeadRetrieveResponse::Product }, nil?: true

      # @!attribute referrer
      #   The referrer URL that brought this lead.
      #
      #   @return [String, nil]
      required :referrer, String, nil?: true

      # @!attribute updated_at
      #   The timestamp of when the lead was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user who is the lead.
      #
      #   @return [WhopSDK::Models::LeadRetrieveResponse::User]
      required :user, -> { WhopSDK::Models::LeadRetrieveResponse::User }

      # @!method initialize(id:, created_at:, member:, metadata:, product:, referrer:, updated_at:, user:)
      #   An object representing a lead (someone who is interested in a whop).
      #
      #   @param id [String] The ID of the lead.
      #
      #   @param created_at [Time] The timestamp of when the lead was created.
      #
      #   @param member [WhopSDK::Models::LeadRetrieveResponse::Member, nil] The converted member, if any.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom metadata for the lead.
      #
      #   @param product [WhopSDK::Models::LeadRetrieveResponse::Product, nil] The access pass the lead is interested in, if available.
      #
      #   @param referrer [String, nil] The referrer URL that brought this lead.
      #
      #   @param updated_at [Time] The timestamp of when the lead was last updated.
      #
      #   @param user [WhopSDK::Models::LeadRetrieveResponse::User] The user who is the lead.

      # @see WhopSDK::Models::LeadRetrieveResponse#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the member
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The converted member, if any.
        #
        #   @param id [String] The ID of the member
      end

      # @see WhopSDK::Models::LeadRetrieveResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public product.
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
        #   @param id [String] The internal ID of the public product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end

      # @see WhopSDK::Models::LeadRetrieveResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
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
        #   @param id [String] The internal ID of the user.
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
