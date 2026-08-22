# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # The Whop ad this event's click resolved to.
      class ListEventsResponseDataItemRelatedAd < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :thumbnail_url, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
