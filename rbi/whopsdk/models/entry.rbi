# typed: strong

module Whopsdk
  module Models
    class Entry < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Entry, Whopsdk::Internal::AnyHash) }

      # The internal ID of the entry.
      sig { returns(String) }
      attr_accessor :id

      # When the entry was created.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :created_at

      # Responses collected from the user when submitting their entry.
      sig { returns(T.nilable(T::Array[Whopsdk::Entry::CustomFieldResponse])) }
      attr_accessor :custom_field_responses

      # The plan (waitlist/raffle) the entry if for.
      sig { returns(T.nilable(Whopsdk::Entry::Plan)) }
      attr_reader :plan

      sig { params(plan: T.nilable(Whopsdk::Entry::Plan::OrHash)).void }
      attr_writer :plan

      # The access pass tied to this entry, if there is one.
      sig { returns(T.nilable(Whopsdk::Entry::Product)) }
      attr_reader :product

      sig { params(product: T.nilable(Whopsdk::Entry::Product::OrHash)).void }
      attr_writer :product

      # The status of an entry to a waitlist or raffle.
      sig { returns(T.nilable(Whopsdk::EntryStatus::TaggedSymbol)) }
      attr_accessor :status

      # The user who created the entry.
      sig { returns(Whopsdk::Entry::User) }
      attr_reader :user

      sig { params(user: Whopsdk::Entry::User::OrHash).void }
      attr_writer :user

      # An object representing an entry in a raffle or waitlist.
      sig do
        params(
          id: String,
          created_at: T.nilable(Integer),
          custom_field_responses:
            T.nilable(T::Array[Whopsdk::Entry::CustomFieldResponse::OrHash]),
          plan: T.nilable(Whopsdk::Entry::Plan::OrHash),
          product: T.nilable(Whopsdk::Entry::Product::OrHash),
          status: T.nilable(Whopsdk::EntryStatus::OrSymbol),
          user: Whopsdk::Entry::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The internal ID of the entry.
        id:,
        # When the entry was created.
        created_at:,
        # Responses collected from the user when submitting their entry.
        custom_field_responses:,
        # The plan (waitlist/raffle) the entry if for.
        plan:,
        # The access pass tied to this entry, if there is one.
        product:,
        # The status of an entry to a waitlist or raffle.
        status:,
        # The user who created the entry.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: T.nilable(Integer),
            custom_field_responses:
              T.nilable(T::Array[Whopsdk::Entry::CustomFieldResponse]),
            plan: T.nilable(Whopsdk::Entry::Plan),
            product: T.nilable(Whopsdk::Entry::Product),
            status: T.nilable(Whopsdk::EntryStatus::TaggedSymbol),
            user: Whopsdk::Entry::User
          }
        )
      end
      def to_hash
      end

      class CustomFieldResponse < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Entry::CustomFieldResponse,
              Whopsdk::Internal::AnyHash
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

      class Plan < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Entry::Plan, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The plan (waitlist/raffle) the entry if for.
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

      class Product < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Entry::Product, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the public access pass.
        sig { returns(String) }
        attr_accessor :id

        # The title of the access pass. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The access pass tied to this entry, if there is one.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the public access pass.
          id:,
          # The title of the access pass. Use for Whop 4.0.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class User < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Entry::User, Whopsdk::Internal::AnyHash)
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
