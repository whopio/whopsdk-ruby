# frozen_string_literal: true

module Whop_sdk
  module AppBuilds
    module Types
      class CreateAppBuildsRequest < Internal::Types::Model
        field :ai_prompt_id, -> { String }, optional: true, nullable: false

        field :app_id, -> { String }, optional: true, nullable: false

        field :attachment, -> { Whop_sdk::AppBuilds::Types::CreateAppBuildsRequestAttachment }, optional: false, nullable: false

        field :checksum, -> { String }, optional: false, nullable: false

        field :platform, -> { Whop_sdk::AppBuilds::Types::CreateAppBuildsRequestPlatform }, optional: false, nullable: false

        field :source_attachment, -> { Whop_sdk::AppBuilds::Types::CreateAppBuildsRequestSourceAttachment }, optional: true, nullable: false

        field :supported_app_view_types, -> { Internal::Types::Array[Whop_sdk::AppBuilds::Types::CreateAppBuildsRequestSupportedAppViewTypesItem] }, optional: true, nullable: false
      end
    end
  end
end
