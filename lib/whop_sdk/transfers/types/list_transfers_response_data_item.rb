# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # A transfer between Whop accounts or users.
      class ListTransfersResponseDataItem < Internal::Types::Model
        field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: false

        field :destination, -> { Whop_sdk::Transfers::Types::ListTransfersResponseDataItemDestination }, optional: false, nullable: true

        field :failed_at, -> { String }, optional: false, nullable: true

        field :failure_code, -> { String }, optional: false, nullable: true

        field :failure_reason, -> { String }, optional: false, nullable: true

        field :fee, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :notes, -> { String }, optional: false, nullable: true

        field :object, -> { Whop_sdk::Transfers::Types::ListTransfersResponseDataItemObject }, optional: false, nullable: false

        field :origin, -> { Whop_sdk::Transfers::Types::ListTransfersResponseDataItemOrigin }, optional: false, nullable: true

        field :status, -> { Whop_sdk::Transfers::Types::ListTransfersResponseDataItemStatus }, optional: false, nullable: false

        field :status_changed_at, -> { String }, optional: false, nullable: true

        field :succeeded_at, -> { String }, optional: false, nullable: true

        field :tracking_url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
