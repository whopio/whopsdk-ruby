# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsResponseDataItemRelatedApp < Internal::Types::Model
        field :domain_id, -> { String }, optional: true, nullable: false

        field :icon_url, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
