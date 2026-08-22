# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      class RetrievePeopleResponseSourcesItemAd < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :thumbnail_url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
