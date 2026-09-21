# frozen_string_literal: true

module Whop_sdk
  module AdConversionValueRules
    module Types
      class ListAdConversionValueRulesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::AdConversionValueRules::Types::ListAdConversionValueRulesRequestStatus }, optional: true, nullable: false

        field :platform, -> { Whop_sdk::AdConversionValueRules::Types::ListAdConversionValueRulesRequestPlatform }, optional: true, nullable: false

        field :resource_id, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::AdConversionValueRules::Types::ListAdConversionValueRulesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::AdConversionValueRules::Types::ListAdConversionValueRulesRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
