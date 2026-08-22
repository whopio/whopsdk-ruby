# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      # The user's member record at this account, when they are a member of it.
      class ListPeopleResponseDataItemMember < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :joined_at, -> { String }, optional: true, nullable: false

        field :status, -> { String }, optional: true, nullable: false

        field :usd_total_spend, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
