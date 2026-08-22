# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      class SummaryDisputesRequest < Internal::Types::Model
        field :groups, -> { Whop_sdk::Disputes::Types::SummaryDisputesRequestGroupsItem }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Disputes::Types::SummaryDisputesRequestStatusItem }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
