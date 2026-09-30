# frozen_string_literal: true

module Whop_sdk
  module Types
    class FinancingApplication < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :feedback, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :requirements, -> { Internal::Types::Array[Whop_sdk::Types::FinancingRequirement] }, optional: true, nullable: false

      field :status, -> { Whop_sdk::Types::FinancingApplicationStatus }, optional: false, nullable: false

      field :terms, -> { Whop_sdk::Types::FinancingTerms }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
