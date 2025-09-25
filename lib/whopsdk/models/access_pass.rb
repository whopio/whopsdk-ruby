# frozen_string_literal: true

module Whopsdk
  module Models
    class AccessPass < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the public access pass.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_type
      #   The type of business the company is.
      #
      #   @return [Symbol, Whopsdk::Models::BusinessTypes, nil]
      required :business_type, enum: -> { Whopsdk::BusinessTypes }, nil?: true

      # @!attribute created_at
      #   When the access pass was created.
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute industry_type
      #   The specific industry the company operates in.
      #
      #   @return [Symbol, Whopsdk::Models::IndustryTypes, nil]
      required :industry_type, enum: -> { Whopsdk::IndustryTypes }, nil?: true

      # @!attribute member_count
      #   The number of active users for this access pass.
      #
      #   @return [Integer]
      required :member_count, Integer

      # @!attribute owner_user
      #   The user that owns the access pass (company owner).
      #
      #   @return [Whopsdk::Models::AccessPass::OwnerUser]
      required :owner_user, -> { Whopsdk::AccessPass::OwnerUser }

      # @!attribute published_reviews_count
      #   The number of reviews that have been published for the access pass.
      #
      #   @return [Integer]
      required :published_reviews_count, Integer

      # @!attribute route
      #   The route of the access pass.
      #
      #   @return [String]
      required :route, String

      # @!attribute title
      #   The title of the access pass. Use for Whop 4.0.
      #
      #   @return [String]
      required :title, String

      # @!attribute updated_at
      #   When the access pass was updated.
      #
      #   @return [Integer]
      required :updated_at, Integer

      # @!attribute verified
      #   Whether this product is Whop verified.
      #
      #   @return [Boolean]
      required :verified, Whopsdk::Internal::Type::Boolean

      # @!method initialize(id:, business_type:, created_at:, industry_type:, member_count:, owner_user:, published_reviews_count:, route:, title:, updated_at:, verified:)
      #   An object representing a (sanitized) access pass.
      #
      #   @param id [String] The internal ID of the public access pass.
      #
      #   @param business_type [Symbol, Whopsdk::Models::BusinessTypes, nil] The type of business the company is.
      #
      #   @param created_at [Integer] When the access pass was created.
      #
      #   @param industry_type [Symbol, Whopsdk::Models::IndustryTypes, nil] The specific industry the company operates in.
      #
      #   @param member_count [Integer] The number of active users for this access pass.
      #
      #   @param owner_user [Whopsdk::Models::AccessPass::OwnerUser] The user that owns the access pass (company owner).
      #
      #   @param published_reviews_count [Integer] The number of reviews that have been published for the access pass.
      #
      #   @param route [String] The route of the access pass.
      #
      #   @param title [String] The title of the access pass. Use for Whop 4.0.
      #
      #   @param updated_at [Integer] When the access pass was updated.
      #
      #   @param verified [Boolean] Whether this product is Whop verified.

      # @see Whopsdk::Models::AccessPass#owner_user
      class OwnerUser < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

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

        # @!method initialize(id:, name:, username:)
        #   The user that owns the access pass (company owner).
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
