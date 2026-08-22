# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsResponseDataItemRelatedProduct < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :route, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
