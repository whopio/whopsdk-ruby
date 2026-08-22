# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdLeadFormQuestion < Internal::Types::Model
      field :format, -> { String }, optional: true, nullable: false

      field :label, -> { String }, optional: true, nullable: false

      field :options, -> { Internal::Types::Array[Whop_sdk::Types::AdLeadFormQuestionOption] }, optional: true, nullable: false

      field :type, -> { String }, optional: false, nullable: false
    end
  end
end
