# typed: strong

module WhopSDK
  module Models
    class ReviewRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::ReviewRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the review.
      sig { returns(String) }
      attr_accessor :id

      # The attachments attached to the review.
      sig do
        returns(T::Array[WhopSDK::Models::ReviewRetrieveResponse::Attachment])
      end
      attr_accessor :attachments

      # The company the review is for.
      sig { returns(WhopSDK::Models::ReviewRetrieveResponse::Company) }
      attr_reader :company

      sig do
        params(
          company: WhopSDK::Models::ReviewRetrieveResponse::Company::OrHash
        ).void
      end
      attr_writer :company

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

      # The product the review is for.
      sig { returns(WhopSDK::Models::ReviewRetrieveResponse::Product) }
      attr_reader :product

      sig do
        params(
          product: WhopSDK::Models::ReviewRetrieveResponse::Product::OrHash
        ).void
      end
      attr_writer :product

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
      sig { returns(WhopSDK::Models::ReviewRetrieveResponse::User) }
      attr_reader :user

      sig do
        params(user: WhopSDK::Models::ReviewRetrieveResponse::User::OrHash).void
      end
      attr_writer :user

      # An object representing a user review of a company.
      sig do
        params(
          id: String,
          attachments:
            T::Array[
              WhopSDK::Models::ReviewRetrieveResponse::Attachment::OrHash
            ],
          company: WhopSDK::Models::ReviewRetrieveResponse::Company::OrHash,
          created_at: Time,
          description: T.nilable(String),
          joined_at: T.nilable(Time),
          paid_for_product: T.nilable(T::Boolean),
          product: WhopSDK::Models::ReviewRetrieveResponse::Product::OrHash,
          published_at: T.nilable(Time),
          stars: Integer,
          status: WhopSDK::ReviewStatus::OrSymbol,
          title: T.nilable(String),
          updated_at: Time,
          user: WhopSDK::Models::ReviewRetrieveResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the review.
        id:,
        # The attachments attached to the review.
        attachments:,
        # The company the review is for.
        company:,
        # The datetime the review was created.
        created_at:,
        # The description of the review.
        description:,
        # The timestamp of when the user joined the product.
        joined_at:,
        # Whether or not the user paid for the product. If null, the payment status is
        # unknown.
        paid_for_product:,
        # The product the review is for.
        product:,
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
              T::Array[WhopSDK::Models::ReviewRetrieveResponse::Attachment],
            company: WhopSDK::Models::ReviewRetrieveResponse::Company,
            created_at: Time,
            description: T.nilable(String),
            joined_at: T.nilable(Time),
            paid_for_product: T.nilable(T::Boolean),
            product: WhopSDK::Models::ReviewRetrieveResponse::Product,
            published_at: T.nilable(Time),
            stars: Integer,
            status: WhopSDK::ReviewStatus::TaggedSymbol,
            title: T.nilable(String),
            updated_at: Time,
            user: WhopSDK::Models::ReviewRetrieveResponse::User
          }
        )
      end
      def to_hash
      end

      class Attachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ReviewRetrieveResponse::Attachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the attachment.
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
          # The unique identifier of the attachment.
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

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ReviewRetrieveResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
        sig { returns(String) }
        attr_accessor :route

        # The display name of the company shown to customers.
        sig { returns(String) }
        attr_accessor :title

        # The company the review is for.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the company.
          id:,
          # The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
          route:,
          # The display name of the company shown to customers.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
        def to_hash
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ReviewRetrieveResponse::Product,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # The product the review is for.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the product.
          id:,
          # The display name of the product shown to customers on the product page and in
          # search results.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ReviewRetrieveResponse::User,
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

        # The user account that performed the action.
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
