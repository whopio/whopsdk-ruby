# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # The saved audience this event came from. Present on the identify events an audience ingest writes for each of
      # its members.
      class ListEventsResponseDataItemRelatedAudience < Internal::Types::Model
        field :audience_type, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedAudienceAudienceType }, optional: true, nullable: false

        field :file_name, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :source_type, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedAudienceSourceType }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
