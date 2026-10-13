# frozen_string_literal: true

module Whop_sdk
  module Types
    class MemberNote < Internal::Types::Model
      field :author, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: true

      field :content, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :member_id, -> { String }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: false
    end
  end
end
