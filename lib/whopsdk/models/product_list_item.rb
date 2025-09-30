# frozen_string_literal: true

module Whopsdk
  module Models
    class ProductListItem < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the public access pass.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, Whopsdk::Models::BusinessTypes, nil]
      required :business_type, enum: -> { Whopsdk::BusinessTypes }, nil?: true

      # @!attribute created_at
      #   When the access pass was created.
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute headline
      #   The headline of the access pass.
      #
      #   @return [String, nil]
      required :headline, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
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

      # @!attribute visibility
      #   Visibility of a resource
      #
      #   @return [Symbol, Whopsdk::Models::ProductListItem::Visibility, nil]
      required :visibility, enum: -> { Whopsdk::ProductListItem::Visibility }, nil?: true

      # @!method initialize(id:, business_type:, created_at:, headline:, industry_type:, member_count:, published_reviews_count:, route:, title:, updated_at:, verified:, visibility:)
      #   An object representing a (sanitized) access pass.
      #
      #   @param id [String] The internal ID of the public access pass.
      #
      #   @param business_type [Symbol, Whopsdk::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param created_at [Integer] When the access pass was created.
      #
      #   @param headline [String, nil] The headline of the access pass.
      #
      #   @param industry_type [Symbol, Whopsdk::Models::IndustryTypes, nil] The different industry types a company can be in.
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
      #
      #   @param visibility [Symbol, Whopsdk::Models::ProductListItem::Visibility, nil] Visibility of a resource

      # Visibility of a resource
      #
      # @see Whopsdk::Models::ProductListItem#visibility
      module Visibility
        extend Whopsdk::Internal::Type::Enum

        VISIBLE = :visible
        HIDDEN = :hidden
        ARCHIVED = :archived
        QUICK_LINK = :quick_link

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
