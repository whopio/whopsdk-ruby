# frozen_string_literal: true

module Whop_sdk
  module AppInstallations
    module Types
      class UpdateAppInstallationsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
