# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsResponseDataItemRelatedAccount < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :logo_url, -> { String }, optional: true, nullable: false

        field :route, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
