# frozen_string_literal: true

module Whop_sdk
  module Types
    # A post or comment in a forum feed, supporting rich text, attachments, polls, and reactions.
    class ForumPost < Internal::Types::Model
      field :attachments, -> { Internal::Types::Array[Whop_sdk::Types::ForumPostAttachmentsItem] }, optional: false, nullable: false

      field :comment_count, -> { Integer }, optional: false, nullable: false

      field :content, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :is_edited, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_pinned, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_poster_admin, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :like_count, -> { Integer }, optional: false, nullable: true

      field :parent_id, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::ForumPostUser }, optional: false, nullable: false

      field :view_count, -> { Integer }, optional: false, nullable: true
    end
  end
end
