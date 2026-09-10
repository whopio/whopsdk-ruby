# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppDomain < Internal::Types::Model
      field :domain, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::AppDomainStatus }, optional: false, nullable: false
    end
  end
end
