# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppInstallation < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::AccountSummary }, optional: false, nullable: false

      field :app, -> { Whop_sdk::Types::AppSummary }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :external_id, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: true

      field :requesting_reauthorization, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
