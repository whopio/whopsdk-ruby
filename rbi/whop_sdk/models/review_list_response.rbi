# typed: strong

module WhopSDK
  module Models
    class ReviewListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::ReviewListResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the review.
      sig { returns(String) }
      attr_accessor :id

      # A list of files and media attached to the review.
      sig { returns(T::Array[WhopSDK::Models::ReviewListResponse::Attachment]) }
      attr_accessor :attachments

      # The datetime the review was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The body text of the review containing the user's detailed feedback. Returns an
      # empty string if no description was provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The timestamp of when the reviewer first joined the product. Null if unknown.
      sig { returns(T.nilable(Time)) }
      attr_accessor :joined_at

      # Whether the reviewer paid for the product. Null if the payment status is
      # unknown.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :paid_for_product

      # The timestamp of when the review was published. Null if the review has not been
      # published yet.
      sig { returns(T.nilable(Time)) }
      attr_accessor :published_at

      # The star rating given by the reviewer, from 1 to 5.
      sig { returns(Integer) }
      attr_accessor :stars

      # The current moderation status of the review.
      sig { returns(WhopSDK::ReviewStatus::TaggedSymbol) }
      attr_accessor :status

      # A short summary title for the review. Null if the reviewer did not provide one.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The datetime the review was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user account of the person who wrote this review.
      sig { returns(WhopSDK::Models::ReviewListResponse::User) }
      attr_reader :user

      sig do
        params(user: WhopSDK::Models::ReviewListResponse::User::OrHash).void
      end
      attr_writer :user

      # A user-submitted review of a company, including a star rating and optional text
      # feedback.
      sig do
        params(
          id: String,
          attachments:
            T::Array[WhopSDK::Models::ReviewListResponse::Attachment::OrHash],
          created_at: Time,
          description: T.nilable(String),
          joined_at: T.nilable(Time),
          paid_for_product: T.nilable(T::Boolean),
          published_at: T.nilable(Time),
          stars: Integer,
          status: WhopSDK::ReviewStatus::OrSymbol,
          title: T.nilable(String),
          updated_at: Time,
          user: WhopSDK::Models::ReviewListResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the review.
        id:,
        # A list of files and media attached to the review.
        attachments:,
        # The datetime the review was created.
        created_at:,
        # The body text of the review containing the user's detailed feedback. Returns an
        # empty string if no description was provided.
        description:,
        # The timestamp of when the reviewer first joined the product. Null if unknown.
        joined_at:,
        # Whether the reviewer paid for the product. Null if the payment status is
        # unknown.
        paid_for_product:,
        # The timestamp of when the review was published. Null if the review has not been
        # published yet.
        published_at:,
        # The star rating given by the reviewer, from 1 to 5.
        stars:,
        # The current moderation status of the review.
        status:,
        # A short summary title for the review. Null if the reviewer did not provide one.
        title:,
        # The datetime the review was last updated.
        updated_at:,
        # The user account of the person who wrote this review.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            attachments:
              T::Array[WhopSDK::Models::ReviewListResponse::Attachment],
            created_at: Time,
            description: T.nilable(String),
            joined_at: T.nilable(Time),
            paid_for_product: T.nilable(T::Boolean),
            published_at: T.nilable(Time),
            stars: Integer,
            status: WhopSDK::ReviewStatus::TaggedSymbol,
            title: T.nilable(String),
            updated_at: Time,
            user: WhopSDK::Models::ReviewListResponse::User
          }
        )
      end
      def to_hash
      end

      class Attachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ReviewListResponse::Attachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The original filename of the uploaded attachment, including its file extension.
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # Represents an image attachment
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
          content_type:,
          # The original filename of the uploaded attachment, including its file extension.
          filename:,
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content_type: T.nilable(String),
              filename: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ReviewListResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user account of the person who wrote this review.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
