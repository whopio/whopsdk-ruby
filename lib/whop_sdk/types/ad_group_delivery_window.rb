# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupDeliveryWindow < Internal::Types::Model
      field :end_, -> { String }, optional: false, nullable: false, api_name: "end"

      field :start, -> { String }, optional: false, nullable: false
    end
  end
end
