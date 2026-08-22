# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # The Whop ad group this event's click resolved to.
      class ListEventsResponseDataItemRelatedAdGroup < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
