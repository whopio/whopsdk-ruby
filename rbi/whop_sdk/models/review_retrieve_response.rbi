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

        # The slug/route of the company on the Whop site.
        sig { returns(String) }
        attr_accessor :route

        # The title of the company.
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
          # The slug/route of the company on the Whop site.
          route:,
          # The title of the company.
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

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The product the review is for.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the product.
          id:,
          # The title of the product. Use for Whop 4.0.
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
