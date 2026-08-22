# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdLeadFormQuestionOption < Internal::Types::Model
      field :key, -> { String }, optional: true, nullable: false

      field :logic, -> { Whop_sdk::Types::AdLeadFormOptionLogic }, optional: true, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
