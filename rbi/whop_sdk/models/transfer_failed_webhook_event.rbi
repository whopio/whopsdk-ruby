# typed: strong

module WhopSDK
  module Models
    class TransferFailedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::TransferFailedWebhookEvent, WhopSDK::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      # A transfer of credit between two ledger accounts.
      sig { returns(WhopSDK::TransferFailedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::TransferFailedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::TransferFailedWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        # A transfer of credit between two ledger accounts.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"transfer.failed"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::TransferFailedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::TransferFailedWebhookEvent::Data,
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
            T.nilable(WhopSDK::TransferFailedWebhookEvent::Data::CreatedByUser)
          )
        end
        attr_reader :created_by_user

        sig do
          params(
            created_by_user:
              T.nilable(
                WhopSDK::TransferFailedWebhookEvent::Data::CreatedByUser::OrHash
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
            WhopSDK::TransferFailedWebhookEvent::Data::Destination::Variants
          )
        end
        attr_accessor :destination

        # Destination ledger account ID.
        sig { returns(String) }
        attr_accessor :destination_ledger_account_id

        # The object type. Discriminates the create response from a send or a claim link.
        sig do
          returns(
            WhopSDK::TransferFailedWebhookEvent::Data::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        # Account or user sending funds.
        sig do
          returns(WhopSDK::TransferFailedWebhookEvent::Data::Origin::Variants)
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
            WhopSDK::TransferFailedWebhookEvent::Data::Status::TaggedSymbol
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
                WhopSDK::TransferFailedWebhookEvent::Data::CreatedByUser::OrHash
              ),
            currency: String,
            destination:
              T.any(
                WhopSDK::TransferFailedWebhookEvent::Data::Destination::Company::OrHash,
                WhopSDK::TransferFailedWebhookEvent::Data::Destination::User::OrHash
              ),
            destination_ledger_account_id: String,
            object: WhopSDK::TransferFailedWebhookEvent::Data::Object::OrSymbol,
            origin:
              T.any(
                WhopSDK::TransferFailedWebhookEvent::Data::Origin::Company::OrHash,
                WhopSDK::TransferFailedWebhookEvent::Data::Origin::User::OrHash
              ),
            origin_ledger_account_id: String,
            status: WhopSDK::TransferFailedWebhookEvent::Data::Status::OrSymbol,
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
                  WhopSDK::TransferFailedWebhookEvent::Data::CreatedByUser
                ),
              currency: String,
              destination:
                WhopSDK::TransferFailedWebhookEvent::Data::Destination::Variants,
              destination_ledger_account_id: String,
              object:
                WhopSDK::TransferFailedWebhookEvent::Data::Object::TaggedSymbol,
              origin:
                WhopSDK::TransferFailedWebhookEvent::Data::Origin::Variants,
              origin_ledger_account_id: String,
              status:
                WhopSDK::TransferFailedWebhookEvent::Data::Status::TaggedSymbol,
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
                WhopSDK::TransferFailedWebhookEvent::Data::CreatedByUser,
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
                WhopSDK::TransferFailedWebhookEvent::Data::Destination::Company,
                WhopSDK::TransferFailedWebhookEvent::Data::Destination::User
              )
            end

          class Company < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::TransferFailedWebhookEvent::Data::Destination::Company,
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
                  WhopSDK::TransferFailedWebhookEvent::Data::Destination::User,
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
                WhopSDK::TransferFailedWebhookEvent::Data::Destination::Variants
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
              T.all(Symbol, WhopSDK::TransferFailedWebhookEvent::Data::Object)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRANSFER =
            T.let(
              :transfer,
              WhopSDK::TransferFailedWebhookEvent::Data::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::TransferFailedWebhookEvent::Data::Object::TaggedSymbol
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
                WhopSDK::TransferFailedWebhookEvent::Data::Origin::Company,
                WhopSDK::TransferFailedWebhookEvent::Data::Origin::User
              )
            end

          class Company < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::TransferFailedWebhookEvent::Data::Origin::Company,
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
                  WhopSDK::TransferFailedWebhookEvent::Data::Origin::User,
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
                WhopSDK::TransferFailedWebhookEvent::Data::Origin::Variants
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
              T.all(Symbol, WhopSDK::TransferFailedWebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROCESSING =
            T.let(
              :processing,
              WhopSDK::TransferFailedWebhookEvent::Data::Status::TaggedSymbol
            )
          SUCCEEDED =
            T.let(
              :succeeded,
              WhopSDK::TransferFailedWebhookEvent::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              WhopSDK::TransferFailedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::TransferFailedWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
