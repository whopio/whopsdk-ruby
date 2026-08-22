# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # A transfer of credit between two ledger accounts.
      class PostTransferFailedPayloadData < Internal::Types::Model
        field :amount, -> { Integer }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :created_by_user, -> { Whop_sdk::Transfers::Types::PostTransferFailedPayloadDataCreatedByUser }, optional: false, nullable: true

        field :currency, -> { String }, optional: false, nullable: false

        field :destination, -> { Whop_sdk::Transfers::Types::PostTransferFailedPayloadDataDestination }, optional: false, nullable: false

        field :destination_ledger_account_id, -> { String }, optional: false, nullable: false

        field :failed_at, -> { String }, optional: true, nullable: false

        field :failure_code, -> { String }, optional: true, nullable: false

        field :failure_reason, -> { String }, optional: true, nullable: false

        field :fee_amount, -> { Integer }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :notes, -> { String }, optional: true, nullable: false

        field :object, -> { Whop_sdk::Transfers::Types::PostTransferFailedPayloadDataObject }, optional: false, nullable: false

        field :origin, -> { Whop_sdk::Transfers::Types::PostTransferFailedPayloadDataOrigin }, optional: false, nullable: false

        field :origin_ledger_account_id, -> { String }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Transfers::Types::PostTransferFailedPayloadDataStatus }, optional: false, nullable: false
      end
    end
  end
end
