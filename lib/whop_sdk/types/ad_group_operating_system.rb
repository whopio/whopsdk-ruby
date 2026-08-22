# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupOperatingSystem < Internal::Types::Model
      field :minimum_version, -> { String }, optional: true, nullable: false

      field :os, -> { Whop_sdk::Types::AdGroupOperatingSystemOs }, optional: false, nullable: false
    end
  end
end
