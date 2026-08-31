# frozen_string_literal: true

module Whop_sdk
  module FinancialActivity
    module Types
      class ListFinancialActivityRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :include_owned_accounts, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :include_resource, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :line_types, -> { Whop_sdk::FinancialActivity::Types::ListFinancialActivityRequestLineTypesItem }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::FinancialActivity::Types::ListFinancialActivityRequestDirection }, optional: true, nullable: false

        field :resource_id, -> { String }, optional: true, nullable: false

        field :activity_id, -> { String }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :posted_after, -> { String }, optional: true, nullable: false

        field :posted_before, -> { String }, optional: true, nullable: false

        field :available_after, -> { String }, optional: true, nullable: false

        field :available_before, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
