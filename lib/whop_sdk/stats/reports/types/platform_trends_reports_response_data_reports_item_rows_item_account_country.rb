# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PlatformTrendsReportsResponseDataReportsItemRowsItemAccountCountry < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
