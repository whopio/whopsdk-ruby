# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupDevicesBodyOperatingSystemsItem < Internal::Types::Model
      field :minimum_version, -> { String }, optional: true, nullable: false

      field :os, -> { Whop_sdk::Types::AdGroupDevicesBodyOperatingSystemsItemOs }, optional: false, nullable: false
    end
  end
end
