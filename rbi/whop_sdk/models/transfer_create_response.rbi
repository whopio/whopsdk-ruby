# typed: strong

module WhopSDK
  module Models
    # A transfer of credit between two ledger accounts.
    module TransferCreateResponse
      extend WhopSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            WhopSDK::Models::TransferCreateResponse::Transfer,
            WhopSDK::Models::TransferCreateResponse::Send,
            WhopSDK::Models::TransferCreateResponse::ClaimLink
          )
        end

      class Transfer < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::TransferCreateResponse::Transfer,
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

        # The user who initiated the transfer, such as the team member who sent a manual
        # payout. Null if the creator is unavailable.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::TransferCreateResponse::Transfer::CreatedByUser
            )
          )
        end
        attr_reader :created_by_user

        sig do
          params(
            created_by_user:
              T.nilable(
                WhopSDK::Models::TransferCreateResponse::Transfer::CreatedByUser::OrHash
              )
          ).void
        end
        attr_writer :created_by_user

        # Transfer currency.
        sig { returns(String) }
        attr_accessor :currency

        # Account or user receiving funds.
        sig do
          returns(
            WhopSDK::Models::TransferCreateResponse::Transfer::Destination::Variants
          )
        end
        attr_accessor :destination

        # Destination ledger account ID.
        sig { returns(String) }
        attr_accessor :destination_ledger_account_id

        # The object type. Discriminates the create response from a send or a claim link.
        sig do
          returns(
            WhopSDK::Models::TransferCreateResponse::Transfer::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        # Account or user sending funds.
        sig do
          returns(
            WhopSDK::Models::TransferCreateResponse::Transfer::Origin::Variants
          )
        end
        attr_accessor :origin

        # Source ledger account ID.
        sig { returns(String) }
        attr_accessor :origin_ledger_account_id

        # Transfer status. `processing` means the on-chain leg is still executing — poll
        # the transfer until it resolves to `succeeded` or `failed`. A `failed` transfer
        # may be retried under the same ID and later resolve to `succeeded`.
        sig do
          returns(
            WhopSDK::Models::TransferCreateResponse::Transfer::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # When the transfer failed, as an ISO 8601 timestamp. Null unless the transfer has
        # failed.
        sig { returns(T.nilable(Time)) }
        attr_accessor :failed_at

        # Machine-readable code for why the transfer failed. Null unless the transfer has
        # failed.
        sig { returns(T.nilable(String)) }
        attr_accessor :failure_code

        # Human-readable explanation of why the transfer failed. Null unless the transfer
        # has failed.
        sig { returns(T.nilable(String)) }
        attr_accessor :failure_reason

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
            created_by_user:
              T.nilable(
                WhopSDK::Models::TransferCreateResponse::Transfer::CreatedByUser::OrHash
              ),
            currency: String,
            destination:
              T.any(
                WhopSDK::Models::TransferCreateResponse::Transfer::Destination::Company::OrHash,
                WhopSDK::Models::TransferCreateResponse::Transfer::Destination::User::OrHash
              ),
            destination_ledger_account_id: String,
            object:
              WhopSDK::Models::TransferCreateResponse::Transfer::Object::OrSymbol,
            origin:
              T.any(
                WhopSDK::Models::TransferCreateResponse::Transfer::Origin::Company::OrHash,
                WhopSDK::Models::TransferCreateResponse::Transfer::Origin::User::OrHash
              ),
            origin_ledger_account_id: String,
            status:
              WhopSDK::Models::TransferCreateResponse::Transfer::Status::OrSymbol,
            failed_at: T.nilable(Time),
            failure_code: T.nilable(String),
            failure_reason: T.nilable(String),
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
          # The user who initiated the transfer, such as the team member who sent a manual
          # payout. Null if the creator is unavailable.
          created_by_user:,
          # Transfer currency.
          currency:,
          # Account or user receiving funds.
          destination:,
          # Destination ledger account ID.
          destination_ledger_account_id:,
          # The object type. Discriminates the create response from a send or a claim link.
          object:,
          # Account or user sending funds.
          origin:,
          # Source ledger account ID.
          origin_ledger_account_id:,
          # Transfer status. `processing` means the on-chain leg is still executing — poll
          # the transfer until it resolves to `succeeded` or `failed`. A `failed` transfer
          # may be retried under the same ID and later resolve to `succeeded`.
          status:,
          # When the transfer failed, as an ISO 8601 timestamp. Null unless the transfer has
          # failed.
          failed_at: nil,
          # Machine-readable code for why the transfer failed. Null unless the transfer has
          # failed.
          failure_code: nil,
          # Human-readable explanation of why the transfer failed. Null unless the transfer
          # has failed.
          failure_reason: nil,
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
              created_by_user:
                T.nilable(
                  WhopSDK::Models::TransferCreateResponse::Transfer::CreatedByUser
                ),
              currency: String,
              destination:
                WhopSDK::Models::TransferCreateResponse::Transfer::Destination::Variants,
              destination_ledger_account_id: String,
              object:
                WhopSDK::Models::TransferCreateResponse::Transfer::Object::TaggedSymbol,
              origin:
                WhopSDK::Models::TransferCreateResponse::Transfer::Origin::Variants,
              origin_ledger_account_id: String,
              status:
                WhopSDK::Models::TransferCreateResponse::Transfer::Status::TaggedSymbol,
              failed_at: T.nilable(Time),
              failure_code: T.nilable(String),
              failure_reason: T.nilable(String),
              fee_amount: T.nilable(Float),
              metadata: T.nilable(T::Hash[Symbol, T.anything]),
              notes: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class CreatedByUser < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::TransferCreateResponse::Transfer::CreatedByUser,
                WhopSDK::Internal::AnyHash
              )
            end

          # User ID.
          sig { returns(String) }
          attr_accessor :id

          # User's username.
          sig { returns(String) }
          attr_accessor :username

          # User display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The user who initiated the transfer, such as the team member who sent a manual
          # payout. Null if the creator is unavailable.
          sig do
            params(
              id: String,
              username: String,
              name: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # User ID.
            id:,
            # User's username.
            username:,
            # User display name.
            name: nil
          )
          end

          sig do
            override.returns(
              { id: String, username: String, name: T.nilable(String) }
            )
          end
          def to_hash
          end
        end

        # Account or user receiving funds.
        module Destination
          extend WhopSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                WhopSDK::Models::TransferCreateResponse::Transfer::Destination::Company,
                WhopSDK::Models::TransferCreateResponse::Transfer::Destination::User
              )
            end

          class Company < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::TransferCreateResponse::Transfer::Destination::Company,
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
                  WhopSDK::Models::TransferCreateResponse::Transfer::Destination::User,
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
                WhopSDK::Models::TransferCreateResponse::Transfer::Destination::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The object type. Discriminates the create response from a send or a claim link.
        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::TransferCreateResponse::Transfer::Object
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRANSFER =
            T.let(
              :transfer,
              WhopSDK::Models::TransferCreateResponse::Transfer::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::TransferCreateResponse::Transfer::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Account or user sending funds.
        module Origin
          extend WhopSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                WhopSDK::Models::TransferCreateResponse::Transfer::Origin::Company,
                WhopSDK::Models::TransferCreateResponse::Transfer::Origin::User
              )
            end

          class Company < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::TransferCreateResponse::Transfer::Origin::Company,
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
                  WhopSDK::Models::TransferCreateResponse::Transfer::Origin::User,
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
                WhopSDK::Models::TransferCreateResponse::Transfer::Origin::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Transfer status. `processing` means the on-chain leg is still executing — poll
        # the transfer until it resolves to `succeeded` or `failed`. A `failed` transfer
        # may be retried under the same ID and later resolve to `succeeded`.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::TransferCreateResponse::Transfer::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROCESSING =
            T.let(
              :processing,
              WhopSDK::Models::TransferCreateResponse::Transfer::Status::TaggedSymbol
            )
          SUCCEEDED =
            T.let(
              :succeeded,
              WhopSDK::Models::TransferCreateResponse::Transfer::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              WhopSDK::Models::TransferCreateResponse::Transfer::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::TransferCreateResponse::Transfer::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Send < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::TransferCreateResponse::Send,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(WhopSDK::Models::TransferCreateResponse::Send::Destination)
        end
        attr_reader :destination

        sig do
          params(
            destination:
              WhopSDK::Models::TransferCreateResponse::Send::Destination::OrHash
          ).void
        end
        attr_writer :destination

        sig do
          returns(
            WhopSDK::Models::TransferCreateResponse::Send::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        sig { returns(WhopSDK::Models::TransferCreateResponse::Send::Source) }
        attr_reader :source

        sig do
          params(
            source:
              WhopSDK::Models::TransferCreateResponse::Send::Source::OrHash
          ).void
        end
        attr_writer :source

        sig { returns(String) }
        attr_accessor :tx_hash

        # Returned for a wallet_send: an onchain USDT send to a recipient.
        sig do
          params(
            amount: String,
            currency: String,
            destination:
              WhopSDK::Models::TransferCreateResponse::Send::Destination::OrHash,
            object:
              WhopSDK::Models::TransferCreateResponse::Send::Object::OrSymbol,
            source:
              WhopSDK::Models::TransferCreateResponse::Send::Source::OrHash,
            tx_hash: String
          ).returns(T.attached_class)
        end
        def self.new(
          amount:,
          currency:,
          destination:,
          object:,
          source:,
          tx_hash:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              currency: String,
              destination:
                WhopSDK::Models::TransferCreateResponse::Send::Destination,
              object:
                WhopSDK::Models::TransferCreateResponse::Send::Object::TaggedSymbol,
              source: WhopSDK::Models::TransferCreateResponse::Send::Source,
              tx_hash: String
            }
          )
        end
        def to_hash
        end

        class Destination < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::TransferCreateResponse::Send::Destination,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account_id

          sig { returns(String) }
          attr_accessor :address

          sig do
            params(account_id: String, address: String).returns(
              T.attached_class
            )
          end
          def self.new(account_id:, address:)
          end

          sig { override.returns({ account_id: String, address: String }) }
          def to_hash
          end
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::TransferCreateResponse::Send::Object
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SEND =
            T.let(
              :send,
              WhopSDK::Models::TransferCreateResponse::Send::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::TransferCreateResponse::Send::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Source < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::TransferCreateResponse::Send::Source,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account_id

          sig { returns(String) }
          attr_accessor :address

          sig do
            params(account_id: String, address: String).returns(
              T.attached_class
            )
          end
          def self.new(account_id:, address:)
          end

          sig { override.returns({ account_id: String, address: String }) }
          def to_hash
          end
        end
      end

      class ClaimLink < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::TransferCreateResponse::ClaimLink,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :claim_url

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        sig do
          returns(
            WhopSDK::Models::TransferCreateResponse::ClaimLink::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        sig { returns(Integer) }
        attr_accessor :redeemable_count

        sig do
          returns(WhopSDK::Models::TransferCreateResponse::ClaimLink::Source)
        end
        attr_reader :source

        sig do
          params(
            source:
              WhopSDK::Models::TransferCreateResponse::ClaimLink::Source::OrHash
          ).void
        end
        attr_writer :source

        # A newly funded claim link is always `pending` — it stays claimable until it is
        # fully claimed, canceled, or expires.
        sig do
          returns(
            WhopSDK::Models::TransferCreateResponse::ClaimLink::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Returned for a claim_link: a shareable URL anyone can open to claim the funds.
        sig do
          params(
            id: String,
            amount: String,
            claim_url: String,
            currency: String,
            expires_at: T.nilable(Time),
            object:
              WhopSDK::Models::TransferCreateResponse::ClaimLink::Object::OrSymbol,
            redeemable_count: Integer,
            source:
              WhopSDK::Models::TransferCreateResponse::ClaimLink::Source::OrHash,
            status:
              WhopSDK::Models::TransferCreateResponse::ClaimLink::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          amount:,
          claim_url:,
          currency:,
          expires_at:,
          object:,
          redeemable_count:,
          source:,
          # A newly funded claim link is always `pending` — it stays claimable until it is
          # fully claimed, canceled, or expires.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: String,
              claim_url: String,
              currency: String,
              expires_at: T.nilable(Time),
              object:
                WhopSDK::Models::TransferCreateResponse::ClaimLink::Object::TaggedSymbol,
              redeemable_count: Integer,
              source:
                WhopSDK::Models::TransferCreateResponse::ClaimLink::Source,
              status:
                WhopSDK::Models::TransferCreateResponse::ClaimLink::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::TransferCreateResponse::ClaimLink::Object
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CLAIM_LINK =
            T.let(
              :claim_link,
              WhopSDK::Models::TransferCreateResponse::ClaimLink::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::TransferCreateResponse::ClaimLink::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Source < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::TransferCreateResponse::ClaimLink::Source,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account_id

          sig { params(account_id: String).returns(T.attached_class) }
          def self.new(account_id:)
          end

          sig { override.returns({ account_id: String }) }
          def to_hash
          end
        end

        # A newly funded claim link is always `pending` — it stays claimable until it is
        # fully claimed, canceled, or expires.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::TransferCreateResponse::ClaimLink::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              WhopSDK::Models::TransferCreateResponse::ClaimLink::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::TransferCreateResponse::ClaimLink::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[WhopSDK::Models::TransferCreateResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
