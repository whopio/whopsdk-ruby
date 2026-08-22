# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupDemographicCategory < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { Whop_sdk::Types::AdGroupDemographicCategoryType }, optional: false, nullable: false
    end
  end
end
