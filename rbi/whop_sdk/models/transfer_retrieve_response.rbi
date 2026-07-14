# typed: strong

module WhopSDK
  module Models
    class TransferRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::TransferRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Transfer ID.
      sig { returns(String) }
      attr_accessor :id

      # Transfer amount.
      sig { returns(Float) }
      attr_accessor :amount

      # When the transfer was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Transfer currency.
      sig { returns(String) }
      attr_accessor :currency

      # Account or user receiving funds.
      sig do
        returns(
          WhopSDK::Models::TransferRetrieveResponse::Destination::Variants
        )
      end
      attr_accessor :destination

      # Destination ledger account ID.
      sig { returns(String) }
      attr_accessor :destination_ledger_account_id

      # Account or user sending funds.
      sig do
        returns(WhopSDK::Models::TransferRetrieveResponse::Origin::Variants)
      end
      attr_accessor :origin

      # Source ledger account ID.
      sig { returns(String) }
      attr_accessor :origin_ledger_account_id

      # Fee charged for the transfer.
      sig { returns(T.nilable(Float)) }
      attr_accessor :fee_amount

      # Custom metadata attached to the transfer.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # Transfer note.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # A transfer of credit between two ledger accounts.
      sig do
        params(
          id: String,
          amount: Float,
          created_at: Time,
          currency: String,
          destination:
            T.any(
              WhopSDK::Models::TransferRetrieveResponse::Destination::Company::OrHash,
              WhopSDK::Models::TransferRetrieveResponse::Destination::User::OrHash
            ),
          destination_ledger_account_id: String,
          origin:
            T.any(
              WhopSDK::Models::TransferRetrieveResponse::Origin::Company::OrHash,
              WhopSDK::Models::TransferRetrieveResponse::Origin::User::OrHash
            ),
          origin_ledger_account_id: String,
          fee_amount: T.nilable(Float),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Transfer ID.
        id:,
        # Transfer amount.
        amount:,
        # When the transfer was created.
        created_at:,
        # Transfer currency.
        currency:,
        # Account or user receiving funds.
        destination:,
        # Destination ledger account ID.
        destination_ledger_account_id:,
        # Account or user sending funds.
        origin:,
        # Source ledger account ID.
        origin_ledger_account_id:,
        # Fee charged for the transfer.
        fee_amount: nil,
        # Custom metadata attached to the transfer.
        metadata: nil,
        # Transfer note.
        notes: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created_at: Time,
            currency: String,
            destination:
              WhopSDK::Models::TransferRetrieveResponse::Destination::Variants,
            destination_ledger_account_id: String,
            origin: WhopSDK::Models::TransferRetrieveResponse::Origin::Variants,
            origin_ledger_account_id: String,
            fee_amount: T.nilable(Float),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            notes: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Account or user receiving funds.
      module Destination
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::Models::TransferRetrieveResponse::Destination::Company,
              WhopSDK::Models::TransferRetrieveResponse::Destination::User
            )
          end

        class Company < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::TransferRetrieveResponse::Destination::Company,
                WhopSDK::Internal::AnyHash
              )
            end

          # Account ID.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :typename

          # Account route.
          sig { returns(T.nilable(String)) }
          attr_accessor :route

          # Account display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          sig do
            params(
              id: String,
              route: T.nilable(String),
              title: T.nilable(String),
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Account ID.
            id:,
            # Account route.
            route: nil,
            # Account display name.
            title: nil,
            typename: :Company
          )
          end

          sig do
            override.returns(
              {
                id: String,
                typename: Symbol,
                route: T.nilable(String),
                title: T.nilable(String)
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
                WhopSDK::Models::TransferRetrieveResponse::Destination::User,
                WhopSDK::Internal::AnyHash
              )
            end

          # User ID.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :typename

          # User display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # User's username.
          sig { returns(T.nilable(String)) }
          attr_reader :username

          sig { params(username: String).void }
          attr_writer :username

          sig do
            params(
              id: String,
              name: T.nilable(String),
              username: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # User ID.
            id:,
            # User display name.
            name: nil,
            # User's username.
            username: nil,
            typename: :User
          )
          end

          sig do
            override.returns(
              {
                id: String,
                typename: Symbol,
                name: T.nilable(String),
                username: String
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::TransferRetrieveResponse::Destination::Variants
            ]
          )
        end
        def self.variants
        end
      end

      # Account or user sending funds.
      module Origin
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::Models::TransferRetrieveResponse::Origin::Company,
              WhopSDK::Models::TransferRetrieveResponse::Origin::User
            )
          end

        class Company < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::TransferRetrieveResponse::Origin::Company,
                WhopSDK::Internal::AnyHash
              )
            end

          # Account ID.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :typename

          # Account route.
          sig { returns(T.nilable(String)) }
          attr_accessor :route

          # Account display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          sig do
            params(
              id: String,
              route: T.nilable(String),
              title: T.nilable(String),
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Account ID.
            id:,
            # Account route.
            route: nil,
            # Account display name.
            title: nil,
            typename: :Company
          )
          end

          sig do
            override.returns(
              {
                id: String,
                typename: Symbol,
                route: T.nilable(String),
                title: T.nilable(String)
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
                WhopSDK::Models::TransferRetrieveResponse::Origin::User,
                WhopSDK::Internal::AnyHash
              )
            end

          # User ID.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :typename

          # User display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # User's username.
          sig { returns(T.nilable(String)) }
          attr_reader :username

          sig { params(username: String).void }
          attr_writer :username

          sig do
            params(
              id: String,
              name: T.nilable(String),
              username: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # User ID.
            id:,
            # User display name.
            name: nil,
            # User's username.
            username: nil,
            typename: :User
          )
          end

          sig do
            override.returns(
              {
                id: String,
                typename: Symbol,
                name: T.nilable(String),
                username: String
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::TransferRetrieveResponse::Origin::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
