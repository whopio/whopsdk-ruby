# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountRecommendedActionChainStep < Internal::Types::Model
      field :action, -> { String }, optional: false, nullable: false

      field :cta, -> { String }, optional: false, nullable: false

      field :cta_label, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :error, -> { String }, optional: false, nullable: true

      field :input, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :output, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :position, -> { Integer }, optional: false, nullable: false

      field :reasoning, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AccountRecommendedActionChainStepStatus }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
