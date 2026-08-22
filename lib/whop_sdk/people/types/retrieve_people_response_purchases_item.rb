# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      class RetrievePeopleResponsePurchasesItem < Internal::Types::Model
        field :event_id, -> { String }, optional: false, nullable: false

        field :occurred_at, -> { String }, optional: false, nullable: false

        field :usd_value, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
