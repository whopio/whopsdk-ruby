# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsResponseDataItemRelatedPlan < Internal::Types::Model
        field :billing_period, -> { Integer }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :initial_price, -> { Integer }, optional: true, nullable: false

        field :renewal_price, -> { Integer }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
