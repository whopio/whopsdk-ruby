# frozen_string_literal: true

module Whop_sdk
  module Leads
    module Types
      class UpdateLeadsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :referrer, -> { String }, optional: true, nullable: false
      end
    end
  end
end
