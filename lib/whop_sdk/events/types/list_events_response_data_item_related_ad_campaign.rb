# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # The Whop ad campaign this event's click resolved to, read from the ad entity tree rather than the click's url
      # params.
      class ListEventsResponseDataItemRelatedAdCampaign < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :platform, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
