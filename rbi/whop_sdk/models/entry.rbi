# typed: strong

module WhopSDK
  module Models
    class Entry < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Entry, WhopSDK::Internal::AnyHash) }

      # The internal ID of the entry.
      sig { returns(String) }
      attr_accessor :id

      # When the entry was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Responses collected from the user when submitting their entry.
      sig { returns(T.nilable(T::Array[WhopSDK::Entry::CustomFieldResponse])) }
      attr_accessor :custom_field_responses

      # The waitlist plan the entry if for.
      sig { returns(T.nilable(WhopSDK::Entry::Plan)) }
      attr_reader :plan

      sig { params(plan: T.nilable(WhopSDK::Entry::Plan::OrHash)).void }
      attr_writer :plan

      # The product tied to this entry, if there is one.
      sig { returns(T.nilable(WhopSDK::Entry::Product)) }
      attr_reader :product

      sig { params(product: T.nilable(WhopSDK::Entry::Product::OrHash)).void }
      attr_writer :product

      # The status of the entry.
      sig { returns(WhopSDK::EntryStatus::TaggedSymbol) }
      attr_accessor :status

      # The user who created the entry.
      sig { returns(WhopSDK::Entry::User) }
      attr_reader :user

      sig { params(user: WhopSDK::Entry::User::OrHash).void }
      attr_writer :user

      # An object representing an entry in a waitlist.
      sig do
        params(
          id: String,
          created_at: T.nilable(Time),
          custom_field_responses:
            T.nilable(T::Array[WhopSDK::Entry::CustomFieldResponse::OrHash]),
          plan: T.nilable(WhopSDK::Entry::Plan::OrHash),
          product: T.nilable(WhopSDK::Entry::Product::OrHash),
          status: WhopSDK::EntryStatus::OrSymbol,
          user: WhopSDK::Entry::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The internal ID of the entry.
        id:,
        # When the entry was created.
        created_at:,
        # Responses collected from the user when submitting their entry.
        custom_field_responses:,
        # The waitlist plan the entry if for.
        plan:,
        # The product tied to this entry, if there is one.
        product:,
        # The status of the entry.
        status:,
        # The user who created the entry.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: T.nilable(Time),
            custom_field_responses:
              T.nilable(T::Array[WhopSDK::Entry::CustomFieldResponse]),
            plan: T.nilable(WhopSDK::Entry::Plan),
            product: T.nilable(WhopSDK::Entry::Product),
            status: WhopSDK::EntryStatus::TaggedSymbol,
            user: WhopSDK::Entry::User
          }
        )
      end
      def to_hash
      end

      class CustomFieldResponse < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Entry::CustomFieldResponse,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the custom field item
        sig { returns(String) }
        attr_accessor :id

        # The response a user gave to the specific question or field.
        sig { returns(String) }
        attr_accessor :answer

        # The question asked by the custom field
        sig { returns(String) }
        attr_accessor :question

        # The response from a custom field on checkout
        sig do
          params(id: String, answer: String, question: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the custom field item
          id:,
          # The response a user gave to the specific question or field.
          answer:,
          # The question asked by the custom field
          question:
        )
        end

        sig do
          override.returns({ id: String, answer: String, question: String })
        end
        def to_hash
        end
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Entry::Plan, WhopSDK::Internal::AnyHash)
          end

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The waitlist plan the entry if for.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the plan.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Entry::Product, WhopSDK::Internal::AnyHash)
          end

        # The internal ID of the public product.
        sig { returns(String) }
        attr_accessor :id

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The product tied to this entry, if there is one.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the public product.
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
            T.any(WhopSDK::Entry::User, WhopSDK::Internal::AnyHash)
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The email of the user
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user who created the entry.
        sig do
          params(
            id: String,
            email: T.nilable(String),
            name: T.nilable(String),
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The email of the user
          email:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
          username:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              email: T.nilable(String),
              name: T.nilable(String),
              username: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
