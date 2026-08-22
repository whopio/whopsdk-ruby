# frozen_string_literal: true

module Whop_sdk
  module Types
    # Saved audiences to deliver to or exclude. Can't be combined with demographics.automatic.
    class AdGroupAudiencesBody < Internal::Types::Model
      field :exclude, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :include, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
