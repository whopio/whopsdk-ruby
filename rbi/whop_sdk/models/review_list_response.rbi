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

      # The attachments attached to the review.
      sig { returns(T::Array[WhopSDK::Models::ReviewListResponse::Attachment]) }
      attr_accessor :attachments

      # The datetime the review was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The description of the review.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The timestamp of when the user joined the product.
      sig { returns(T.nilable(Time)) }
      attr_accessor :joined_at

      # Whether or not the user paid for the product. If null, the payment status is
      # unknown.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :paid_for_product

      # The timestamp of when the review was published.
      sig { returns(T.nilable(Time)) }
      attr_accessor :published_at

      # The number of stars the user gave the product.
      sig { returns(Integer) }
      attr_accessor :stars

      # The status of the review.
      sig { returns(WhopSDK::ReviewStatus::TaggedSymbol) }
      attr_accessor :status

      # The title of the review.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The datetime the review was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user account that performed the action.
      sig { returns(WhopSDK::Models::ReviewListResponse::User) }
      attr_reader :user

      sig do
        params(user: WhopSDK::Models::ReviewListResponse::User::OrHash).void
      end
      attr_writer :user

      # An object representing a user review of a company.
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
        # The attachments attached to the review.
        attachments:,
        # The datetime the review was created.
        created_at:,
        # The description of the review.
        description:,
        # The timestamp of when the user joined the product.
        joined_at:,
        # Whether or not the user paid for the product. If null, the payment status is
        # unknown.
        paid_for_product:,
        # The timestamp of when the review was published.
        published_at:,
        # The number of stars the user gave the product.
        stars:,
        # The status of the review.
        status:,
        # The title of the review.
        title:,
        # The datetime the review was last updated.
        updated_at:,
        # The user account that performed the action.
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

        # The ID of the attachment
        sig { returns(String) }
        attr_accessor :id

        # The attachment's content type (e.g., image/jpg, video/mp4)
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The name of the file
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
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
          # The ID of the attachment
          id:,
          # The attachment's content type (e.g., image/jpg, video/mp4)
          content_type:,
          # The name of the file
          filename:,
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
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

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user account that performed the action.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
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
