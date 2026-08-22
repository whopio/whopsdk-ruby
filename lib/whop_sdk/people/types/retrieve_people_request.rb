# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      class RetrievePeopleRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
