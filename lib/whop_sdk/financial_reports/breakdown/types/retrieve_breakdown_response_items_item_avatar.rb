# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Breakdown
      module Types
        class RetrieveBreakdownResponseItemsItemAvatar < Internal::Types::Model
          field :shape, -> { Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownResponseItemsItemAvatarShape }, optional: false, nullable: false

          field :url, -> { String }, optional: false, nullable: true
        end
      end
    end
  end
end
