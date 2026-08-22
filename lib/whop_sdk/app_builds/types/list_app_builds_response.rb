# frozen_string_literal: true

module Whop_sdk
  module AppBuilds
    module Types
      class ListAppBuildsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AppBuild] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::AppBuilds::Types::ListAppBuildsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
