# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      class RetrievePeopleResponseUsageOsItem < Internal::Types::Model
        field :events, -> { Integer }, optional: false, nullable: false

        field :value, -> { String }, optional: false, nullable: false
      end
    end
  end
end
