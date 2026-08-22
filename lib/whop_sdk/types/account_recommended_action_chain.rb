# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountRecommendedActionChain < Internal::Types::Model
      field :actions, -> { Internal::Types::Array[Whop_sdk::Types::AccountRecommendedActionChainStep] }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :reasoning, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
