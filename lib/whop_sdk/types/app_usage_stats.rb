# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppUsageStats < Internal::Types::Model
      field :dau, -> { Integer }, optional: false, nullable: true

      field :mau, -> { Integer }, optional: false, nullable: true

      field :time_spent_last24hours, -> { Integer }, optional: false, nullable: true, api_name: "time_spent_last24_hours"

      field :wau, -> { Integer }, optional: false, nullable: true
    end
  end
end
