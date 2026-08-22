# frozen_string_literal: true

module Whop_sdk
  module Types
    class DescribeStatsResponseDescribeViewAssociationsItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :model, -> { String }, optional: false, nullable: true

      field :path, -> { String }, optional: false, nullable: true

      field :event_name, -> { String }, optional: false, nullable: true
    end
  end
end
