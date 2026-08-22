# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      class RetrievePeopleResponseDevice < Internal::Types::Model
        field :browser, -> { String }, optional: true, nullable: false

        field :device, -> { String }, optional: true, nullable: false

        field :os, -> { String }, optional: true, nullable: false
      end
    end
  end
end
