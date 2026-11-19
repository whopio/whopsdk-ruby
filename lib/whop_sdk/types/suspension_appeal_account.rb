# frozen_string_literal: true

module Whop_sdk
  module Types
    class SuspensionAppealAccount < Internal::Types::Model
      field :display_name, -> { String }, optional: false, nullable: false

      field :funds_release_at, -> { String }, optional: false, nullable: true

      field :funds_release_days, -> { Integer }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::SuspensionAppealAccountStatus }, optional: false, nullable: true

      field :suspended_at, -> { String }, optional: false, nullable: true
    end
  end
end
