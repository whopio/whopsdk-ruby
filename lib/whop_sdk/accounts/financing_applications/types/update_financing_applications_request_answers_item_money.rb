# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module FinancingApplications
      module Types
        # Price answer, such as `max_product_price`. `null` clears the price.
        class UpdateFinancingApplicationsRequestAnswersItemMoney < Internal::Types::Model
          field :amount, -> { String }, optional: false, nullable: false

          field :currency, -> { Whop_sdk::Accounts::FinancingApplications::Types::UpdateFinancingApplicationsRequestAnswersItemMoneyCurrency }, optional: false, nullable: false
        end
      end
    end
  end
end
