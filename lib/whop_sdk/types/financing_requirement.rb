# frozen_string_literal: true

module Whop_sdk
  module Types
    class FinancingRequirement < Internal::Types::Model
      field :accepted_file_formats, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :field, -> { String }, optional: false, nullable: false

      field :file_collection_type, -> { Whop_sdk::Types::FinancingRequirementFileCollectionType }, optional: false, nullable: false

      field :files, -> { Internal::Types::Array[Whop_sdk::Types::File] }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :max_file_size, -> { Integer }, optional: false, nullable: false

      field :minimum_length, -> { Integer }, optional: false, nullable: true

      field :money, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :options, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :text_collection_type, -> { Whop_sdk::Types::FinancingRequirementTextCollectionType }, optional: false, nullable: false

      field :text_format, -> { Whop_sdk::Types::FinancingRequirementTextFormat }, optional: false, nullable: false

      field :values, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
