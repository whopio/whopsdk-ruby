# frozen_string_literal: true

module Whop_sdk
  module AppBuilds
    module Types
      class ListAppBuildsRequest < Internal::Types::Model
        field :app_id, -> { String }, optional: false, nullable: false

        field :platform, -> { Whop_sdk::AppBuilds::Types::ListAppBuildsRequestPlatform }, optional: true, nullable: false

        field :status, -> { Whop_sdk::AppBuilds::Types::ListAppBuildsRequestStatus }, optional: true, nullable: false

        field :created_before, -> { Whop_sdk::Types::ListAppBuildsRequestCreatedBefore }, optional: true, nullable: false

        field :created_after, -> { Whop_sdk::Types::ListAppBuildsRequestCreatedAfter }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
