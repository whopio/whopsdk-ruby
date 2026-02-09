# typed: strong

module WhopSDK
  module Models
    class Transfer < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Transfer, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the credit transaction transfer.
      sig { returns(String) }
      attr_accessor :id

      # The amount of the transfer. Provided as a number in the specified currency. Eg:
      # 10.43 for $10.43 USD.
      sig { returns(Float) }
      attr_accessor :amount

      # The datetime the credit transaction transfer was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the credit transaction transfer
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The recipient of the credit transaction transfer
      sig { returns(T.nilable(WhopSDK::Transfer::Destination::Variants)) }
      attr_accessor :destination

      # The ID of the destination ledger account
      sig { returns(String) }
      attr_accessor :destination_ledger_account_id

      # The decimal fee of the credit transaction transfer
      sig { returns(T.nilable(Float)) }
      attr_accessor :fee_amount

      # Custom key-value pairs attached to the transfer. Max 50 keys, 500 chars per key,
      # 5000 chars per value.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The notes of the credit transaction transfer
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # The sender of the credit transaction transfer
      sig { returns(T.nilable(WhopSDK::Transfer::Origin::Variants)) }
      attr_accessor :origin

      # The ID of the origin ledger account
      sig { returns(String) }
      attr_accessor :origin_ledger_account_id

      # Credit Transaction Transfer
      sig do
        params(
          id: String,
          amount: Float,
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          destination:
            T.nilable(
              T.any(
                WhopSDK::Transfer::Destination::User::OrHash,
                WhopSDK::Transfer::Destination::Company::OrHash
              )
            ),
          destination_ledger_account_id: String,
          fee_amount: T.nilable(Float),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String),
          origin:
            T.nilable(
              T.any(
                WhopSDK::Transfer::Origin::User::OrHash,
                WhopSDK::Transfer::Origin::Company::OrHash
              )
            ),
          origin_ledger_account_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the credit transaction transfer.
        id:,
        # The amount of the transfer. Provided as a number in the specified currency. Eg:
        # 10.43 for $10.43 USD.
        amount:,
        # The datetime the credit transaction transfer was created.
        created_at:,
        # The currency of the credit transaction transfer
        currency:,
        # The recipient of the credit transaction transfer
        destination:,
        # The ID of the destination ledger account
        destination_ledger_account_id:,
        # The decimal fee of the credit transaction transfer
        fee_amount:,
        # Custom key-value pairs attached to the transfer. Max 50 keys, 500 chars per key,
        # 5000 chars per value.
        metadata:,
        # The notes of the credit transaction transfer
        notes:,
        # The sender of the credit transaction transfer
        origin:,
        # The ID of the origin ledger account
        origin_ledger_account_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            destination: T.nilable(WhopSDK::Transfer::Destination::Variants),
            destination_ledger_account_id: String,
            fee_amount: T.nilable(Float),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            notes: T.nilable(String),
            origin: T.nilable(WhopSDK::Transfer::Origin::Variants),
            origin_ledger_account_id: String
          }
        )
      end
      def to_hash
      end

      # The recipient of the credit transaction transfer
      module Destination
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.nilable(
              T.any(
                WhopSDK::Transfer::Destination::User,
                WhopSDK::Transfer::Destination::Company
              )
            )
          end

        class User < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Transfer::Destination::User,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the user.
          sig { returns(String) }
          attr_accessor :id

          # The user's display name shown on their public profile.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # The user's unique username shown on their public profile.
          sig { returns(String) }
          attr_accessor :username

          # A user account on Whop. Contains profile information, identity details, and
          # social connections.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              username: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the user.
            id:,
            # The user's display name shown on their public profile.
            name:,
            # The user's unique username shown on their public profile.
            username:,
            # The typename of this object
            typename: :User
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                typename: Symbol,
                username: String
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
                WhopSDK::Transfer::Destination::Company,
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

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # A company is a seller on Whop. Companies own products, manage members, and
          # receive payouts.
          sig do
            params(
              id: String,
              route: String,
              title: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the company.
            id:,
            # The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
            route:,
            # The display name of the company shown to customers.
            title:,
            # The typename of this object
            typename: :Company
          )
          end

          sig do
            override.returns(
              { id: String, route: String, title: String, typename: Symbol }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(T::Array[WhopSDK::Transfer::Destination::Variants])
        end
        def self.variants
        end
      end

      # The sender of the credit transaction transfer
      module Origin
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.nilable(
              T.any(
                WhopSDK::Transfer::Origin::User,
                WhopSDK::Transfer::Origin::Company
              )
            )
          end

        class User < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(WhopSDK::Transfer::Origin::User, WhopSDK::Internal::AnyHash)
            end

          # The unique identifier for the user.
          sig { returns(String) }
          attr_accessor :id

          # The user's display name shown on their public profile.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # The user's unique username shown on their public profile.
          sig { returns(String) }
          attr_accessor :username

          # A user account on Whop. Contains profile information, identity details, and
          # social connections.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              username: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the user.
            id:,
            # The user's display name shown on their public profile.
            name:,
            # The user's unique username shown on their public profile.
            username:,
            # The typename of this object
            typename: :User
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                typename: Symbol,
                username: String
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
                WhopSDK::Transfer::Origin::Company,
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

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # A company is a seller on Whop. Companies own products, manage members, and
          # receive payouts.
          sig do
            params(
              id: String,
              route: String,
              title: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the company.
            id:,
            # The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
            route:,
            # The display name of the company shown to customers.
            title:,
            # The typename of this object
            typename: :Company
          )
          end

          sig do
            override.returns(
              { id: String, route: String, title: String, typename: Symbol }
            )
          end
          def to_hash
          end
        end

        sig { override.returns(T::Array[WhopSDK::Transfer::Origin::Variants]) }
        def self.variants
        end
      end
    end
  end
end
