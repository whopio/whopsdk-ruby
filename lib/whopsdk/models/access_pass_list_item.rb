# frozen_string_literal: true

module Whopsdk
  module Models
    class AccessPassListItem < Whopsdk::Internal::Type::BaseModel
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

      # @!method initialize(id:, business_type:, created_at:, industry_type:, member_count:, published_reviews_count:, route:, title:, updated_at:, verified:)
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
      #   @param published_reviews_count [Integer] The number of reviews that have been published for the access pass.
      #
      #   @param route [String] The route of the access pass.
      #
      #   @param title [String] The title of the access pass. Use for Whop 4.0.
      #
      #   @param updated_at [Integer] When the access pass was updated.
      #
      #   @param verified [Boolean] Whether this product is Whop verified.
    end
  end
end
