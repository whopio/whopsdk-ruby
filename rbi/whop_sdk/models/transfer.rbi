# typed: strong

module WhopSDK
  module Models
    class Transfer < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Transfer, WhopSDK::Internal::AnyHash) }

      # The unique identifier of the credit transaction transfer
      sig { returns(String) }
      attr_accessor :id

      # The amount of the transfer. Provided as a number in the specified currency. Eg:
      # 10.43 for $10.43 USD.
      sig { returns(Float) }
      attr_accessor :amount

      # The timestamp when the credit transaction transfer was created
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
        # The unique identifier of the credit transaction transfer
        id:,
        # The amount of the transfer. Provided as a number in the specified currency. Eg:
        # 10.43 for $10.43 USD.
        amount:,
        # The timestamp when the credit transaction transfer was created
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

          # The internal ID of the user.
          sig { returns(String) }
          attr_accessor :id

          # The name of the user from their Whop account.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # The username of the user from their Whop account.
          sig { returns(String) }
          attr_accessor :username

          # An object representing a (sanitized) user of the site.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              username: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The internal ID of the user.
            id:,
            # The name of the user from their Whop account.
            name:,
            # The username of the user from their Whop account.
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

          # The ID (tag) of the company.
          sig { returns(String) }
          attr_accessor :id

          # The slug/route of the company on the Whop site.
          sig { returns(String) }
          attr_accessor :route

          # The title of the company.
          sig { returns(String) }
          attr_accessor :title

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # An object representing a (sanitized) company.
          sig do
            params(
              id: String,
              route: String,
              title: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID (tag) of the company.
            id:,
            # The slug/route of the company on the Whop site.
            route:,
            # The title of the company.
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

          # The internal ID of the user.
          sig { returns(String) }
          attr_accessor :id

          # The name of the user from their Whop account.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # The username of the user from their Whop account.
          sig { returns(String) }
          attr_accessor :username

          # An object representing a (sanitized) user of the site.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              username: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The internal ID of the user.
            id:,
            # The name of the user from their Whop account.
            name:,
            # The username of the user from their Whop account.
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

          # The ID (tag) of the company.
          sig { returns(String) }
          attr_accessor :id

          # The slug/route of the company on the Whop site.
          sig { returns(String) }
          attr_accessor :route

          # The title of the company.
          sig { returns(String) }
          attr_accessor :title

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # An object representing a (sanitized) company.
          sig do
            params(
              id: String,
              route: String,
              title: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID (tag) of the company.
            id:,
            # The slug/route of the company on the Whop site.
            route:,
            # The title of the company.
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
