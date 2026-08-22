# frozen_string_literal: true

module Whop_sdk
  module PromoCodes
    module Types
      class ListPromoCodesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :status, -> { Whop_sdk::PromoCodes::Types::ListPromoCodesRequestStatus }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false

        field :plan_ids, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::PromoCodes::Types::ListPromoCodesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::PromoCodes::Types::ListPromoCodesRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
