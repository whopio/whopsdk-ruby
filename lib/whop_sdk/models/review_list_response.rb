# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Reviews#list
    class ReviewListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the review.
      #
      #   @return [String]
      required :id, String

      # @!attribute attachments
      #   The attachments attached to the review.
      #
      #   @return [Array<WhopSDK::Models::ReviewListResponse::Attachment>]
      required :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::ReviewListResponse::Attachment] }

      # @!attribute created_at
      #   The timestamp of when the review was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The description of the review.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute joined_at
      #   The timestamp of when the user joined the product.
      #
      #   @return [Time, nil]
      required :joined_at, Time, nil?: true

      # @!attribute paid_for_product
      #   Whether or not the user paid for the product. If null, the payment status is
      #   unknown.
      #
      #   @return [Boolean, nil]
      required :paid_for_product, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute published_at
      #   The timestamp of when the review was published.
      #
      #   @return [Time, nil]
      required :published_at, Time, nil?: true

      # @!attribute stars
      #   The number of stars the user gave the product.
      #
      #   @return [Integer]
      required :stars, Integer

      # @!attribute status
      #   The status of the review.
      #
      #   @return [Symbol, WhopSDK::Models::ReviewStatus]
      required :status, enum: -> { WhopSDK::ReviewStatus }

      # @!attribute title
      #   The title of the review.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #   The timestamp of when the review was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user account that performed the action.
      #
      #   @return [WhopSDK::Models::ReviewListResponse::User]
      required :user, -> { WhopSDK::Models::ReviewListResponse::User }

      # @!method initialize(id:, attachments:, created_at:, description:, joined_at:, paid_for_product:, published_at:, stars:, status:, title:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ReviewListResponse} for more details.
      #
      #   An object representing a user review of a company.
      #
      #   @param id [String] The internal ID of the review.
      #
      #   @param attachments [Array<WhopSDK::Models::ReviewListResponse::Attachment>] The attachments attached to the review.
      #
      #   @param created_at [Time] The timestamp of when the review was created.
      #
      #   @param description [String, nil] The description of the review.
      #
      #   @param joined_at [Time, nil] The timestamp of when the user joined the product.
      #
      #   @param paid_for_product [Boolean, nil] Whether or not the user paid for the product. If null, the payment status is unk
      #
      #   @param published_at [Time, nil] The timestamp of when the review was published.
      #
      #   @param stars [Integer] The number of stars the user gave the product.
      #
      #   @param status [Symbol, WhopSDK::Models::ReviewStatus] The status of the review.
      #
      #   @param title [String, nil] The title of the review.
      #
      #   @param updated_at [Time] The timestamp of when the review was last updated.
      #
      #   @param user [WhopSDK::Models::ReviewListResponse::User] The user account that performed the action.

      class Attachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the attachment
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   The attachment's content type (e.g., image/jpg, video/mp4)
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The name of the file
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute url
        #   This is the URL you use to render optimized attachments on the client. This
        #   should be used for apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ReviewListResponse::Attachment} for more details.
        #
        #   Represents an image attachment
        #
        #   @param id [String] The ID of the attachment
        #
        #   @param content_type [String, nil] The attachment's content type (e.g., image/jpg, video/mp4)
        #
        #   @param filename [String, nil] The name of the file
        #
        #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
      end

      # @see WhopSDK::Models::ReviewListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
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
        #   The user account that performed the action.
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
