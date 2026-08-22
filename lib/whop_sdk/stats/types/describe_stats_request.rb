# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class DescribeStatsRequest < Internal::Types::Model
        field :resource, -> { String }, optional: true, nullable: false

        field :company_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
