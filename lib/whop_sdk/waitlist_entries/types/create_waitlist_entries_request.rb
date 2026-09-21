# frozen_string_literal: true

module Whop_sdk
  module WaitlistEntries
    module Types
      class CreateWaitlistEntriesRequest < Internal::Types::Model
        field :custom_field_responses, -> { Internal::Types::Array[Whop_sdk::WaitlistEntries::Types::CreateWaitlistEntriesRequestCustomFieldResponsesItem] }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :plan_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
