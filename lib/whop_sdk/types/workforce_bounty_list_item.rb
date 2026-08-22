# frozen_string_literal: true

module Whop_sdk
  module Types
    # A privately accessible bounty.
    class WorkforceBountyListItem < Internal::Types::Model
      field :bounty_type, -> { Whop_sdk::Types::BountyTypes }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::Statuses }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :total_available, -> { Integer }, optional: false, nullable: false

      field :total_paid, -> { Integer }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :vote_threshold, -> { Integer }, optional: false, nullable: false
    end
  end
end
