# typed: strong

module Whopsdk
  module Models
    class EntryListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Whopsdk::Models::EntryListResponse, Whopsdk::Internal::AnyHash)
        end

      # The internal ID of the entry.
      sig { returns(String) }
      attr_accessor :id

      # When the entry was created.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :created_at

      # The waitlist plan the entry if for.
      sig { returns(T.nilable(Whopsdk::Models::EntryListResponse::Plan)) }
      attr_reader :plan

      sig do
        params(
          plan: T.nilable(Whopsdk::Models::EntryListResponse::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # The access pass tied to this entry, if there is one.
      sig { returns(T.nilable(Whopsdk::Models::EntryListResponse::Product)) }
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(Whopsdk::Models::EntryListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # The status of the entry.
      sig { returns(Whopsdk::EntryStatus::TaggedSymbol) }
      attr_accessor :status

      # The user who created the entry.
      sig { returns(Whopsdk::Models::EntryListResponse::User) }
      attr_reader :user

      sig do
        params(user: Whopsdk::Models::EntryListResponse::User::OrHash).void
      end
      attr_writer :user

      # An object representing an entry in a waitlist.
      sig do
        params(
          id: String,
          created_at: T.nilable(Integer),
          plan: T.nilable(Whopsdk::Models::EntryListResponse::Plan::OrHash),
          product:
            T.nilable(Whopsdk::Models::EntryListResponse::Product::OrHash),
          status: Whopsdk::EntryStatus::OrSymbol,
          user: Whopsdk::Models::EntryListResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The internal ID of the entry.
        id:,
        # When the entry was created.
        created_at:,
        # The waitlist plan the entry if for.
        plan:,
        # The access pass tied to this entry, if there is one.
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
            created_at: T.nilable(Integer),
            plan: T.nilable(Whopsdk::Models::EntryListResponse::Plan),
            product: T.nilable(Whopsdk::Models::EntryListResponse::Product),
            status: Whopsdk::EntryStatus::TaggedSymbol,
            user: Whopsdk::Models::EntryListResponse::User
          }
        )
      end
      def to_hash
      end

      class Plan < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::EntryListResponse::Plan,
              Whopsdk::Internal::AnyHash
            )
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

      class Product < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::EntryListResponse::Product,
              Whopsdk::Internal::AnyHash
            )
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
            T.any(
              Whopsdk::Models::EntryListResponse::User,
              Whopsdk::Internal::AnyHash
            )
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
