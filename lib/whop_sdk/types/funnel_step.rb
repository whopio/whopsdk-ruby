# frozen_string_literal: true

module Whop_sdk
  module Types
    class FunnelStep < Internal::Types::Model
      field :app_build_id, -> { String }, optional: true, nullable: false

      field :app_id, -> { String }, optional: true, nullable: false

      field :browser, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :custom_name, -> { String }, optional: true, nullable: false

      field :device, -> { String }, optional: true, nullable: false

      field :event, -> { String }, optional: false, nullable: false

      field :experiment_id, -> { String }, optional: true, nullable: false

      field :hostname, -> { String }, optional: true, nullable: false

      field :os, -> { String }, optional: true, nullable: false

      field :page, -> { String }, optional: true, nullable: false

      field :plan_id, -> { String }, optional: true, nullable: false

      field :product_id, -> { String }, optional: true, nullable: false

      field :source, -> { String }, optional: true, nullable: false

      field :utm_source, -> { String }, optional: true, nullable: false

      field :variant, -> { String }, optional: true, nullable: false
    end
  end
end
