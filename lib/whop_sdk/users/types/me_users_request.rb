# frozen_string_literal: true

module Whop_sdk
  module Users
    module Types
      class MeUsersRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :include_balance_history, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :from, -> { String }, optional: true, nullable: false

        field :to, -> { String }, optional: true, nullable: false

        field :interval, -> { Whop_sdk::Users::Types::MeUsersRequestInterval }, optional: true, nullable: false

        field :time_zone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
