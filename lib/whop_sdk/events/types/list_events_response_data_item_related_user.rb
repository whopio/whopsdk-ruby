# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsResponseDataItemRelatedUser < Internal::Types::Model
        field :avatar_url, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :username, -> { String }, optional: true, nullable: false
      end
    end
  end
end
