# frozen_string_literal: true

module Whop_sdk
  module Types
    class MemberLastActivityMessage < Internal::Types::Model
      field :author, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: true

      field :channel_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::MemberLastActivityMessageObject }, optional: false, nullable: false

      field :plain_content, -> { String }, optional: false, nullable: true
    end
  end
end
