# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdConversionValueRuleTarget < Internal::Types::Model
      field :platform, -> { Whop_sdk::Types::AdConversionValueRuleTargetPlatform }, optional: false, nullable: false

      field :resource_id, -> { String }, optional: false, nullable: true

      field :resource_title, -> { String }, optional: false, nullable: true

      field :scope, -> { Whop_sdk::Types::AdConversionValueRuleTargetScope }, optional: false, nullable: false
    end
  end
end
