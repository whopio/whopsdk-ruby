# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountRecommendedActionOutcome < Internal::Types::Model
      field :account, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :actions, -> { Internal::Types::Array[Whop_sdk::Types::AccountRecommendedActionChainStep] }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :executed_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :latency_ms, -> { Integer }, optional: false, nullable: true

      field :payment, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :payment_at, -> { String }, optional: false, nullable: true

      field :payment_id, -> { String }, optional: false, nullable: true

      field :reasoning, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
