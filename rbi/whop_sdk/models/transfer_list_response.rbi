# typed: strong

module WhopSDK
  module Models
    class TransferListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::TransferListResponse,
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
        returns(T.nilable(WhopSDK::Models::TransferListResponse::CreatedByUser))
      end
      attr_reader :created_by_user

      sig do
        params(
          created_by_user:
            T.nilable(
              WhopSDK::Models::TransferListResponse::CreatedByUser::OrHash
            )
        ).void
      end
      attr_writer :created_by_user

      # Transfer currency.
      sig { returns(String) }
      attr_accessor :currency

      # Destination ledger account ID.
      sig { returns(String) }
      attr_accessor :destination_ledger_account_id

      # The object type.
      sig do
        returns(WhopSDK::Models::TransferListResponse::Object::TaggedSymbol)
      end
      attr_accessor :object

      # Source ledger account ID.
      sig { returns(String) }
      attr_accessor :origin_ledger_account_id

      # Transfer status. `processing` means the on-chain leg is still executing — poll
      # the transfer until it resolves to `succeeded` or `failed`. A `failed` transfer
      # may be retried under the same ID and later resolve to `succeeded`.
      sig do
        returns(WhopSDK::Models::TransferListResponse::Status::TaggedSymbol)
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
              WhopSDK::Models::TransferListResponse::CreatedByUser::OrHash
            ),
          currency: String,
          destination_ledger_account_id: String,
          object: WhopSDK::Models::TransferListResponse::Object::OrSymbol,
          origin_ledger_account_id: String,
          status: WhopSDK::Models::TransferListResponse::Status::OrSymbol,
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
        # Destination ledger account ID.
        destination_ledger_account_id:,
        # The object type.
        object:,
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
              T.nilable(WhopSDK::Models::TransferListResponse::CreatedByUser),
            currency: String,
            destination_ledger_account_id: String,
            object: WhopSDK::Models::TransferListResponse::Object::TaggedSymbol,
            origin_ledger_account_id: String,
            status: WhopSDK::Models::TransferListResponse::Status::TaggedSymbol,
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
              WhopSDK::Models::TransferListResponse::CreatedByUser,
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
          params(id: String, username: String, name: T.nilable(String)).returns(
            T.attached_class
          )
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

      # The object type.
      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::TransferListResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER =
          T.let(
            :transfer,
            WhopSDK::Models::TransferListResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::TransferListResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Transfer status. `processing` means the on-chain leg is still executing — poll
      # the transfer until it resolves to `succeeded` or `failed`. A `failed` transfer
      # may be retried under the same ID and later resolve to `succeeded`.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::TransferListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROCESSING =
          T.let(
            :processing,
            WhopSDK::Models::TransferListResponse::Status::TaggedSymbol
          )
        SUCCEEDED =
          T.let(
            :succeeded,
            WhopSDK::Models::TransferListResponse::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            WhopSDK::Models::TransferListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::TransferListResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
