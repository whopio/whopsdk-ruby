# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Breakdown
      module Types
        class RetrieveBreakdownResponseItemsItem < Internal::Types::Model
          field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

          field :image_url, -> { String }, optional: false, nullable: true

          field :key, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false

          field :object, -> { Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownResponseItemsItemObject }, optional: false, nullable: false

          field :resource_id, -> { String }, optional: false, nullable: true
        end
      end
    end
  end
end
