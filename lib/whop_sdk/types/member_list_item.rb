# frozen_string_literal: true

module Whop_sdk
  module Types
    # A member represents a user's relationship with a company on Whop, including their access level, status, and
    # spending history.
    class MemberListItem < Internal::Types::Model
      field :access_level, -> { Whop_sdk::Types::AccessLevel }, optional: false, nullable: false

      field :company_token_balance, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :joined_at, -> { String }, optional: false, nullable: false

      field :most_recent_action, -> { Whop_sdk::Types::MemberMostRecentActions }, optional: false, nullable: true

      field :most_recent_action_at, -> { String }, optional: false, nullable: true

      field :phone, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::MemberStatuses }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :usd_total_spent, -> { Integer }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::MemberListItemUser }, optional: false, nullable: true
    end
  end
end
