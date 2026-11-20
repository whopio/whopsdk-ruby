# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountAffiliateProgram < Internal::Types::Model
      field :application_questions, -> { Internal::Types::Array[Whop_sdk::Types::AccountAffiliateProgramQuestion] }, optional: false, nullable: false

      field :application_required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :featured_product_id, -> { String }, optional: false, nullable: true

      field :instructions, -> { String }, optional: false, nullable: true
    end
  end
end
