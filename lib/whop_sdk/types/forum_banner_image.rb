# frozen_string_literal: true

module Whop_sdk
  module Types
    # The banner image displayed at the top of the forum page. Null if no banner has been uploaded.
    class ForumBannerImage < Internal::Types::Model
      field :content_type, -> { String }, optional: false, nullable: true

      field :filename, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
