# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserEarningsAmount < Internal::Types::Model
      field :last24hours, -> { String }, optional: false, nullable: false, api_name: "last_24_hours"

      field :last30days, -> { String }, optional: false, nullable: false, api_name: "last_30_days"

      field :last7days, -> { String }, optional: false, nullable: false, api_name: "last_7_days"

      field :lifetime, -> { String }, optional: false, nullable: false
    end
  end
end
