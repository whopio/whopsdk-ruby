# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company member record if this lead has converted into a paying customer. Null if the lead has not converted.
    class LeadMember < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
