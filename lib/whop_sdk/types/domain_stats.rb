# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainStats < Internal::Types::Model
      field :unique_visitors_last7days, -> { Integer }, optional: false, nullable: false, api_name: "unique_visitors_last_7_days"
    end
  end
end
