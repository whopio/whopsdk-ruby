# frozen_string_literal: true

module Whop_sdk
  module Types
    class NotificationExperienceApp < Internal::Types::Model
      field :icon_url, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
