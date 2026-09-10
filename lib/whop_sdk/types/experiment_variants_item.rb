# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperimentVariantsItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :ranges, -> { Internal::Types::Array[Internal::Types::Array[Integer]] }, optional: true, nullable: false

      field :related_resource, -> { Whop_sdk::Types::ExperimentResourceReference }, optional: true, nullable: false

      field :weight, -> { Integer }, optional: false, nullable: false
    end
  end
end
