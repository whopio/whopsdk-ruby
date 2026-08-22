# frozen_string_literal: true

module Whop_sdk
  module DisputeAlerts
    module Types
      class ListDisputeAlertsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :payment_id, -> { String }, optional: true, nullable: false

        field :type, -> { Whop_sdk::DisputeAlerts::Types::ListDisputeAlertsRequestType }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::DisputeAlerts::Types::ListDisputeAlertsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::DisputeAlerts::Types::ListDisputeAlertsRequestDirection }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
