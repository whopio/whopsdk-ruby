# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupAudiences < Internal::Types::Model
      field :exclude, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :include, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
