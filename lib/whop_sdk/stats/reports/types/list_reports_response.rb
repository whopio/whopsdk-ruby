# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class ListReportsResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Stats::Reports::Types::ListReportsResponseDataItem] }, optional: false, nullable: false
        end
      end
    end
  end
end
