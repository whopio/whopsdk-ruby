# frozen_string_literal: true

module WhopSDK
  module Models
    class TransferCompletedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute data
      #   A transfer of credit between two ledger accounts.
      #
      #   @return [WhopSDK::Models::TransferCompletedWebhookEvent::Data]
      required :data, -> { WhopSDK::TransferCompletedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"transfer.completed"]
      required :type, const: :"transfer.completed"

      # @!attribute account_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"transfer.completed")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TransferCompletedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::TransferCompletedWebhookEvent::Data] A transfer of credit between two ledger accounts.
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"transfer.completed"] The webhook event type

      # @see WhopSDK::Models::TransferCompletedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Transfer ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   Transfer amount.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute created_at
        #   When the transfer was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute created_by_user
        #   The user who initiated the transfer, such as the team member who sent a manual
        #   payout. Null if the creator is unavailable.
        #
        #   @return [WhopSDK::Models::TransferCompletedWebhookEvent::Data::CreatedByUser, nil]
        required :created_by_user,
                 -> {
                   WhopSDK::TransferCompletedWebhookEvent::Data::CreatedByUser
                 },
                 nil?: true

        # @!attribute currency
        #   Transfer currency.
        #
        #   @return [String]
        required :currency, String

        # @!attribute destination
        #   Account or user receiving funds.
        #
        #   @return [WhopSDK::Models::TransferCompletedWebhookEvent::Data::Destination::Company, WhopSDK::Models::TransferCompletedWebhookEvent::Data::Destination::User]
        required :destination, union: -> { WhopSDK::TransferCompletedWebhookEvent::Data::Destination }

        # @!attribute destination_ledger_account_id
        #   Destination ledger account ID.
        #
        #   @return [String]
        required :destination_ledger_account_id, String

        # @!attribute object
        #   The object type. Discriminates the create response from a send or a claim link.
        #
        #   @return [Symbol, WhopSDK::Models::TransferCompletedWebhookEvent::Data::Object]
        required :object, enum: -> { WhopSDK::TransferCompletedWebhookEvent::Data::Object }

        # @!attribute origin
        #   Account or user sending funds.
        #
        #   @return [WhopSDK::Models::TransferCompletedWebhookEvent::Data::Origin::Company, WhopSDK::Models::TransferCompletedWebhookEvent::Data::Origin::User]
        required :origin, union: -> { WhopSDK::TransferCompletedWebhookEvent::Data::Origin }

        # @!attribute origin_ledger_account_id
        #   Source ledger account ID.
        #
        #   @return [String]
        required :origin_ledger_account_id, String

        # @!attribute status
        #   Transfer status. `processing` means the on-chain leg is still executing — poll
        #   the transfer until it resolves to `succeeded` or `failed`. A `failed` transfer
        #   may be retried under the same ID and later resolve to `succeeded`.
        #
        #   @return [Symbol, WhopSDK::Models::TransferCompletedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::TransferCompletedWebhookEvent::Data::Status }

        # @!attribute failed_at
        #   When the transfer failed, as an ISO 8601 timestamp. Null unless the transfer has
        #   failed.
        #
        #   @return [Time, nil]
        optional :failed_at, Time, nil?: true

        # @!attribute failure_code
        #   Machine-readable code for why the transfer failed. Null unless the transfer has
        #   failed.
        #
        #   @return [String, nil]
        optional :failure_code, String, nil?: true

        # @!attribute failure_reason
        #   Human-readable explanation of why the transfer failed. Null unless the transfer
        #   has failed.
        #
        #   @return [String, nil]
        optional :failure_reason, String, nil?: true

        # @!attribute fee_amount
        #   Fee charged for the transfer.
        #
        #   @return [Float, nil]
        optional :fee_amount, Float, nil?: true

        # @!attribute metadata
        #   Custom metadata attached to the transfer.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

        # @!attribute notes
        #   Transfer note.
        #
        #   @return [String, nil]
        optional :notes, String, nil?: true

        # @!method initialize(id:, amount:, created_at:, created_by_user:, currency:, destination:, destination_ledger_account_id:, object:, origin:, origin_ledger_account_id:, status:, failed_at: nil, failure_code: nil, failure_reason: nil, fee_amount: nil, metadata: nil, notes: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::TransferCompletedWebhookEvent::Data} for more details.
        #
        #   A transfer of credit between two ledger accounts.
        #
        #   @param id [String] Transfer ID.
        #
        #   @param amount [Float] Transfer amount.
        #
        #   @param created_at [Time] When the transfer was created.
        #
        #   @param created_by_user [WhopSDK::Models::TransferCompletedWebhookEvent::Data::CreatedByUser, nil] The user who initiated the transfer, such as the team member who sent a manual p
        #
        #   @param currency [String] Transfer currency.
        #
        #   @param destination [WhopSDK::Models::TransferCompletedWebhookEvent::Data::Destination::Company, WhopSDK::Models::TransferCompletedWebhookEvent::Data::Destination::User] Account or user receiving funds.
        #
        #   @param destination_ledger_account_id [String] Destination ledger account ID.
        #
        #   @param object [Symbol, WhopSDK::Models::TransferCompletedWebhookEvent::Data::Object] The object type. Discriminates the create response from a send or a claim link.
        #
        #   @param origin [WhopSDK::Models::TransferCompletedWebhookEvent::Data::Origin::Company, WhopSDK::Models::TransferCompletedWebhookEvent::Data::Origin::User] Account or user sending funds.
        #
        #   @param origin_ledger_account_id [String] Source ledger account ID.
        #
        #   @param status [Symbol, WhopSDK::Models::TransferCompletedWebhookEvent::Data::Status] Transfer status. `processing` means the on-chain leg is still executing — poll t
        #
        #   @param failed_at [Time, nil] When the transfer failed, as an ISO 8601 timestamp. Null unless the transfer has
        #
        #   @param failure_code [String, nil] Machine-readable code for why the transfer failed. Null unless the transfer has
        #
        #   @param failure_reason [String, nil] Human-readable explanation of why the transfer failed. Null unless the transfer
        #
        #   @param fee_amount [Float, nil] Fee charged for the transfer.
        #
        #   @param metadata [Hash{Symbol=>Object}, nil] Custom metadata attached to the transfer.
        #
        #   @param notes [String, nil] Transfer note.

        # @see WhopSDK::Models::TransferCompletedWebhookEvent::Data#created_by_user
        class CreatedByUser < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   User ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute username
          #   User's username.
          #
          #   @return [String]
          required :username, String

          # @!attribute name
          #   User display name.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!method initialize(id:, username:, name: nil)
          #   The user who initiated the transfer, such as the team member who sent a manual
          #   payout. Null if the creator is unavailable.
          #
          #   @param id [String] User ID.
          #
          #   @param username [String] User's username.
          #
          #   @param name [String, nil] User display name.
        end

        # Account or user receiving funds.
        #
        # @see WhopSDK::Models::TransferCompletedWebhookEvent::Data#destination
        module Destination
          extend WhopSDK::Internal::Type::Union

          discriminator :typename

          variant :Company, -> { WhopSDK::TransferCompletedWebhookEvent::Data::Destination::Company }

          variant :User, -> { WhopSDK::TransferCompletedWebhookEvent::Data::Destination::User }

          class Company < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Account ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute typename
            #
            #   @return [Symbol, :Company]
            required :typename, const: :Company

            # @!attribute route
            #   Account route.
            #
            #   @return [String, nil]
            optional :route, String, nil?: true

            # @!attribute title
            #   Account display name.
            #
            #   @return [String, nil]
            optional :title, String, nil?: true

            # @!method initialize(id:, route: nil, title: nil, typename: :Company)
            #   @param id [String] Account ID.
            #
            #   @param route [String, nil] Account route.
            #
            #   @param title [String, nil] Account display name.
            #
            #   @param typename [Symbol, :Company]
          end

          class User < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   User ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute typename
            #
            #   @return [Symbol, :User]
            required :typename, const: :User

            # @!attribute name
            #   User display name.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute username
            #   User's username.
            #
            #   @return [String, nil]
            optional :username, String

            # @!method initialize(id:, name: nil, username: nil, typename: :User)
            #   @param id [String] User ID.
            #
            #   @param name [String, nil] User display name.
            #
            #   @param username [String] User's username.
            #
            #   @param typename [Symbol, :User]
          end

          # @!method self.variants
          #   @return [Array(WhopSDK::Models::TransferCompletedWebhookEvent::Data::Destination::Company, WhopSDK::Models::TransferCompletedWebhookEvent::Data::Destination::User)]
        end

        # The object type. Discriminates the create response from a send or a claim link.
        #
        # @see WhopSDK::Models::TransferCompletedWebhookEvent::Data#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          TRANSFER = :transfer

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Account or user sending funds.
        #
        # @see WhopSDK::Models::TransferCompletedWebhookEvent::Data#origin
        module Origin
          extend WhopSDK::Internal::Type::Union

          discriminator :typename

          variant :Company, -> { WhopSDK::TransferCompletedWebhookEvent::Data::Origin::Company }

          variant :User, -> { WhopSDK::TransferCompletedWebhookEvent::Data::Origin::User }

          class Company < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Account ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute typename
            #
            #   @return [Symbol, :Company]
            required :typename, const: :Company

            # @!attribute route
            #   Account route.
            #
            #   @return [String, nil]
            optional :route, String, nil?: true

            # @!attribute title
            #   Account display name.
            #
            #   @return [String, nil]
            optional :title, String, nil?: true

            # @!method initialize(id:, route: nil, title: nil, typename: :Company)
            #   @param id [String] Account ID.
            #
            #   @param route [String, nil] Account route.
            #
            #   @param title [String, nil] Account display name.
            #
            #   @param typename [Symbol, :Company]
          end

          class User < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   User ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute typename
            #
            #   @return [Symbol, :User]
            required :typename, const: :User

            # @!attribute name
            #   User display name.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute username
            #   User's username.
            #
            #   @return [String, nil]
            optional :username, String

            # @!method initialize(id:, name: nil, username: nil, typename: :User)
            #   @param id [String] User ID.
            #
            #   @param name [String, nil] User display name.
            #
            #   @param username [String] User's username.
            #
            #   @param typename [Symbol, :User]
          end

          # @!method self.variants
          #   @return [Array(WhopSDK::Models::TransferCompletedWebhookEvent::Data::Origin::Company, WhopSDK::Models::TransferCompletedWebhookEvent::Data::Origin::User)]
        end

        # Transfer status. `processing` means the on-chain leg is still executing — poll
        # the transfer until it resolves to `succeeded` or `failed`. A `failed` transfer
        # may be retried under the same ID and later resolve to `succeeded`.
        #
        # @see WhopSDK::Models::TransferCompletedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          PROCESSING = :processing
          SUCCEEDED = :succeeded
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
