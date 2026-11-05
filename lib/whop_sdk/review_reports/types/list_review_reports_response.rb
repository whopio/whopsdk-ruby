# frozen_string_literal: true

module Whop_sdk
  module ReviewReports
    module Types
      class ListReviewReportsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ReviewReport] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::ReviewReports::Types::ListReviewReportsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
