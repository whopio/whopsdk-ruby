# frozen_string_literal: true

module WhopSDK
  module Models
    # A transfer of credit between two ledger accounts.
    #
    # @see WhopSDK::Resources::Transfers#create
    module TransferCreateResponse
      extend WhopSDK::Internal::Type::Union

      # A transfer of credit between two ledger accounts.
      variant -> { WhopSDK::Models::TransferCreateResponse::Transfer }

      # Returned for a wallet_send: an onchain USDT send to a recipient.
      variant -> { WhopSDK::Models::TransferCreateResponse::Send }

      # Returned for a claim_link: a shareable URL anyone can open to claim the funds.
      variant -> { WhopSDK::Models::TransferCreateResponse::ClaimLink }

      class Transfer < WhopSDK::Internal::Type::BaseModel
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
        #   @return [WhopSDK::Models::TransferCreateResponse::Transfer::CreatedByUser, nil]
        required :created_by_user,
                 -> { WhopSDK::Models::TransferCreateResponse::Transfer::CreatedByUser },
                 nil?: true

        # @!attribute currency
        #   Transfer currency.
        #
        #   @return [String]
        required :currency, String

        # @!attribute destination
        #   Account or user receiving funds.
        #
        #   @return [WhopSDK::Models::TransferCreateResponse::Transfer::Destination::Company, WhopSDK::Models::TransferCreateResponse::Transfer::Destination::User]
        required :destination, union: -> { WhopSDK::Models::TransferCreateResponse::Transfer::Destination }

        # @!attribute destination_ledger_account_id
        #   Destination ledger account ID.
        #
        #   @return [String]
        required :destination_ledger_account_id, String

        # @!attribute object
        #   The object type. Discriminates the create response from a send or a claim link.
        #
        #   @return [Symbol, WhopSDK::Models::TransferCreateResponse::Transfer::Object]
        required :object, enum: -> { WhopSDK::Models::TransferCreateResponse::Transfer::Object }

        # @!attribute origin
        #   Account or user sending funds.
        #
        #   @return [WhopSDK::Models::TransferCreateResponse::Transfer::Origin::Company, WhopSDK::Models::TransferCreateResponse::Transfer::Origin::User]
        required :origin, union: -> { WhopSDK::Models::TransferCreateResponse::Transfer::Origin }

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
        #   @return [Symbol, WhopSDK::Models::TransferCreateResponse::Transfer::Status]
        required :status, enum: -> { WhopSDK::Models::TransferCreateResponse::Transfer::Status }

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
        #   {WhopSDK::Models::TransferCreateResponse::Transfer} for more details.
        #
        #   A transfer of credit between two ledger accounts.
        #
        #   @param id [String] Transfer ID.
        #
        #   @param amount [Float] Transfer amount.
        #
        #   @param created_at [Time] When the transfer was created.
        #
        #   @param created_by_user [WhopSDK::Models::TransferCreateResponse::Transfer::CreatedByUser, nil] The user who initiated the transfer, such as the team member who sent a manual p
        #
        #   @param currency [String] Transfer currency.
        #
        #   @param destination [WhopSDK::Models::TransferCreateResponse::Transfer::Destination::Company, WhopSDK::Models::TransferCreateResponse::Transfer::Destination::User] Account or user receiving funds.
        #
        #   @param destination_ledger_account_id [String] Destination ledger account ID.
        #
        #   @param object [Symbol, WhopSDK::Models::TransferCreateResponse::Transfer::Object] The object type. Discriminates the create response from a send or a claim link.
        #
        #   @param origin [WhopSDK::Models::TransferCreateResponse::Transfer::Origin::Company, WhopSDK::Models::TransferCreateResponse::Transfer::Origin::User] Account or user sending funds.
        #
        #   @param origin_ledger_account_id [String] Source ledger account ID.
        #
        #   @param status [Symbol, WhopSDK::Models::TransferCreateResponse::Transfer::Status] Transfer status. `processing` means the on-chain leg is still executing — poll t
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

        # @see WhopSDK::Models::TransferCreateResponse::Transfer#created_by_user
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
        # @see WhopSDK::Models::TransferCreateResponse::Transfer#destination
        module Destination
          extend WhopSDK::Internal::Type::Union

          discriminator :typename

          variant :Company, -> { WhopSDK::Models::TransferCreateResponse::Transfer::Destination::Company }

          variant :User, -> { WhopSDK::Models::TransferCreateResponse::Transfer::Destination::User }

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
          #   @return [Array(WhopSDK::Models::TransferCreateResponse::Transfer::Destination::Company, WhopSDK::Models::TransferCreateResponse::Transfer::Destination::User)]
        end

        # The object type. Discriminates the create response from a send or a claim link.
        #
        # @see WhopSDK::Models::TransferCreateResponse::Transfer#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          TRANSFER = :transfer

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Account or user sending funds.
        #
        # @see WhopSDK::Models::TransferCreateResponse::Transfer#origin
        module Origin
          extend WhopSDK::Internal::Type::Union

          discriminator :typename

          variant :Company, -> { WhopSDK::Models::TransferCreateResponse::Transfer::Origin::Company }

          variant :User, -> { WhopSDK::Models::TransferCreateResponse::Transfer::Origin::User }

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
          #   @return [Array(WhopSDK::Models::TransferCreateResponse::Transfer::Origin::Company, WhopSDK::Models::TransferCreateResponse::Transfer::Origin::User)]
        end

        # Transfer status. `processing` means the on-chain leg is still executing — poll
        # the transfer until it resolves to `succeeded` or `failed`. A `failed` transfer
        # may be retried under the same ID and later resolve to `succeeded`.
        #
        # @see WhopSDK::Models::TransferCreateResponse::Transfer#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          PROCESSING = :processing
          SUCCEEDED = :succeeded
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Send < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute destination
        #
        #   @return [WhopSDK::Models::TransferCreateResponse::Send::Destination]
        required :destination, -> { WhopSDK::Models::TransferCreateResponse::Send::Destination }

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::TransferCreateResponse::Send::Object]
        required :object, enum: -> { WhopSDK::Models::TransferCreateResponse::Send::Object }

        # @!attribute source
        #
        #   @return [WhopSDK::Models::TransferCreateResponse::Send::Source]
        required :source, -> { WhopSDK::Models::TransferCreateResponse::Send::Source }

        # @!attribute tx_hash
        #
        #   @return [String]
        required :tx_hash, String

        # @!method initialize(amount:, currency:, destination:, object:, source:, tx_hash:)
        #   Returned for a wallet_send: an onchain USDT send to a recipient.
        #
        #   @param amount [String]
        #   @param currency [String]
        #   @param destination [WhopSDK::Models::TransferCreateResponse::Send::Destination]
        #   @param object [Symbol, WhopSDK::Models::TransferCreateResponse::Send::Object]
        #   @param source [WhopSDK::Models::TransferCreateResponse::Send::Source]
        #   @param tx_hash [String]

        # @see WhopSDK::Models::TransferCreateResponse::Send#destination
        class Destination < WhopSDK::Internal::Type::BaseModel
          # @!attribute account_id
          #
          #   @return [String]
          required :account_id, String

          # @!attribute address
          #
          #   @return [String]
          required :address, String

          # @!method initialize(account_id:, address:)
          #   @param account_id [String]
          #   @param address [String]
        end

        # @see WhopSDK::Models::TransferCreateResponse::Send#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          SEND = :send

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::TransferCreateResponse::Send#source
        class Source < WhopSDK::Internal::Type::BaseModel
          # @!attribute account_id
          #
          #   @return [String]
          required :account_id, String

          # @!attribute address
          #
          #   @return [String]
          required :address, String

          # @!method initialize(account_id:, address:)
          #   @param account_id [String]
          #   @param address [String]
        end
      end

      class ClaimLink < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #
        #   @return [String]
        required :amount, String

        # @!attribute claim_url
        #
        #   @return [String]
        required :claim_url, String

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute expires_at
        #
        #   @return [Time, nil]
        required :expires_at, Time, nil?: true

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::TransferCreateResponse::ClaimLink::Object]
        required :object, enum: -> { WhopSDK::Models::TransferCreateResponse::ClaimLink::Object }

        # @!attribute redeemable_count
        #
        #   @return [Integer]
        required :redeemable_count, Integer

        # @!attribute source
        #
        #   @return [WhopSDK::Models::TransferCreateResponse::ClaimLink::Source]
        required :source, -> { WhopSDK::Models::TransferCreateResponse::ClaimLink::Source }

        # @!attribute status
        #   A newly funded claim link is always `pending` — it stays claimable until it is
        #   fully claimed, canceled, or expires.
        #
        #   @return [Symbol, WhopSDK::Models::TransferCreateResponse::ClaimLink::Status]
        required :status, enum: -> { WhopSDK::Models::TransferCreateResponse::ClaimLink::Status }

        # @!method initialize(id:, amount:, claim_url:, currency:, expires_at:, object:, redeemable_count:, source:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::TransferCreateResponse::ClaimLink} for more details.
        #
        #   Returned for a claim_link: a shareable URL anyone can open to claim the funds.
        #
        #   @param id [String]
        #
        #   @param amount [String]
        #
        #   @param claim_url [String]
        #
        #   @param currency [String]
        #
        #   @param expires_at [Time, nil]
        #
        #   @param object [Symbol, WhopSDK::Models::TransferCreateResponse::ClaimLink::Object]
        #
        #   @param redeemable_count [Integer]
        #
        #   @param source [WhopSDK::Models::TransferCreateResponse::ClaimLink::Source]
        #
        #   @param status [Symbol, WhopSDK::Models::TransferCreateResponse::ClaimLink::Status] A newly funded claim link is always `pending` — it stays claimable until it is f

        # @see WhopSDK::Models::TransferCreateResponse::ClaimLink#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          CLAIM_LINK = :claim_link

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::TransferCreateResponse::ClaimLink#source
        class Source < WhopSDK::Internal::Type::BaseModel
          # @!attribute account_id
          #
          #   @return [String]
          required :account_id, String

          # @!method initialize(account_id:)
          #   @param account_id [String]
        end

        # A newly funded claim link is always `pending` — it stays claimable until it is
        # fully claimed, canceled, or expires.
        #
        # @see WhopSDK::Models::TransferCreateResponse::ClaimLink#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          PENDING = :pending

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::TransferCreateResponse::Transfer, WhopSDK::Models::TransferCreateResponse::Send, WhopSDK::Models::TransferCreateResponse::ClaimLink)]
    end
  end
end
