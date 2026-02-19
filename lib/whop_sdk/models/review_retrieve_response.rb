# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Reviews#retrieve
    class ReviewRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the review.
      #
      #   @return [String]
      required :id, String

      # @!attribute attachments
      #   A list of files and media attached to the review.
      #
      #   @return [Array<WhopSDK::Models::ReviewRetrieveResponse::Attachment>]
      required :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::ReviewRetrieveResponse::Attachment] }

      # @!attribute company
      #   The company that this review was written for.
      #
      #   @return [WhopSDK::Models::ReviewRetrieveResponse::Company]
      required :company, -> { WhopSDK::Models::ReviewRetrieveResponse::Company }

      # @!attribute created_at
      #   The datetime the review was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The body text of the review containing the user's detailed feedback. Returns an
      #   empty string if no description was provided.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute joined_at
      #   The timestamp of when the reviewer first joined the product. Null if unknown.
      #
      #   @return [Time, nil]
      required :joined_at, Time, nil?: true

      # @!attribute paid_for_product
      #   Whether the reviewer paid for the product. Null if the payment status is
      #   unknown.
      #
      #   @return [Boolean, nil]
      required :paid_for_product, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute product
      #   The product that this review was written for.
      #
      #   @return [WhopSDK::Models::ReviewRetrieveResponse::Product]
      required :product, -> { WhopSDK::Models::ReviewRetrieveResponse::Product }

      # @!attribute published_at
      #   The timestamp of when the review was published. Null if the review has not been
      #   published yet.
      #
      #   @return [Time, nil]
      required :published_at, Time, nil?: true

      # @!attribute stars
      #   The star rating given by the reviewer, from 1 to 5.
      #
      #   @return [Integer]
      required :stars, Integer

      # @!attribute status
      #   The current moderation status of the review.
      #
      #   @return [Symbol, WhopSDK::Models::ReviewStatus]
      required :status, enum: -> { WhopSDK::ReviewStatus }

      # @!attribute title
      #   A short summary title for the review. Null if the reviewer did not provide one.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #   The datetime the review was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user account of the person who wrote this review.
      #
      #   @return [WhopSDK::Models::ReviewRetrieveResponse::User]
      required :user, -> { WhopSDK::Models::ReviewRetrieveResponse::User }

      # @!method initialize(id:, attachments:, company:, created_at:, description:, joined_at:, paid_for_product:, product:, published_at:, stars:, status:, title:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ReviewRetrieveResponse} for more details.
      #
      #   A user-submitted review of a company, including a star rating and optional text
      #   feedback.
      #
      #   @param id [String] The unique identifier for the review.
      #
      #   @param attachments [Array<WhopSDK::Models::ReviewRetrieveResponse::Attachment>] A list of files and media attached to the review.
      #
      #   @param company [WhopSDK::Models::ReviewRetrieveResponse::Company] The company that this review was written for.
      #
      #   @param created_at [Time] The datetime the review was created.
      #
      #   @param description [String, nil] The body text of the review containing the user's detailed feedback. Returns an
      #
      #   @param joined_at [Time, nil] The timestamp of when the reviewer first joined the product. Null if unknown.
      #
      #   @param paid_for_product [Boolean, nil] Whether the reviewer paid for the product. Null if the payment status is unknown
      #
      #   @param product [WhopSDK::Models::ReviewRetrieveResponse::Product] The product that this review was written for.
      #
      #   @param published_at [Time, nil] The timestamp of when the review was published. Null if the review has not been
      #
      #   @param stars [Integer] The star rating given by the reviewer, from 1 to 5.
      #
      #   @param status [Symbol, WhopSDK::Models::ReviewStatus] The current moderation status of the review.
      #
      #   @param title [String, nil] A short summary title for the review. Null if the reviewer did not provide one.
      #
      #   @param updated_at [Time] The datetime the review was last updated.
      #
      #   @param user [WhopSDK::Models::ReviewRetrieveResponse::User] The user account of the person who wrote this review.

      class Attachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The original filename of the uploaded attachment, including its file extension.
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ReviewRetrieveResponse::Attachment} for more details.
        #
        #   Represents an image attachment
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param content_type [String, nil] The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @param filename [String, nil] The original filename of the uploaded attachment, including its file extension.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end

      # @see WhopSDK::Models::ReviewRetrieveResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The display name of the company shown to customers.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ReviewRetrieveResponse::Company} for more details.
        #
        #   The company that this review was written for.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param route [String] The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
        #
        #   @param title [String] The display name of the company shown to customers.
      end

      # @see WhopSDK::Models::ReviewRetrieveResponse#product
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
        #   {WhopSDK::Models::ReviewRetrieveResponse::Product} for more details.
        #
        #   The product that this review was written for.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end

      # @see WhopSDK::Models::ReviewRetrieveResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

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

        # @!method initialize(id:, name:, username:)
        #   The user account of the person who wrote this review.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
