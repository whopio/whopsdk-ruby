# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module FinancingApplications
      module Types
        class UpdateFinancingApplicationsRequestAnswersItem < Internal::Types::Model
          field :file_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

          field :money, -> { Whop_sdk::Accounts::FinancingApplications::Types::UpdateFinancingApplicationsRequestAnswersItemMoney }, optional: true, nullable: false

          field :requirement_id, -> { String }, optional: false, nullable: false

          field :values, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        end
      end
    end
  end
end
