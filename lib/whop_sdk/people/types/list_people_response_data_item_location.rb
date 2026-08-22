# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      class ListPeopleResponseDataItemLocation < Internal::Types::Model
        field :city, -> { String }, optional: true, nullable: false

        field :continent, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false
      end
    end
  end
end
