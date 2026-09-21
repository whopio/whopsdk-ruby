# frozen_string_literal: true

module Whop_sdk
  module WaitlistEntries
    module Types
      class CreateWaitlistEntriesRequestCustomFieldResponsesItem < Internal::Types::Model
        field :answer, -> { String }, optional: false, nullable: false

        field :custom_field_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
