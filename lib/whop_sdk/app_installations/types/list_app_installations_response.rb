# frozen_string_literal: true

module Whop_sdk
  module AppInstallations
    module Types
      class ListAppInstallationsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AppInstallation] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::AppInstallations::Types::ListAppInstallationsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
