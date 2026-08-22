# frozen_string_literal: true

module Whop_sdk
  module CourseLessonInteractions
    module Types
      # The connection type for LessonInteraction.
      class ListCourseLessonInteractionsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::CourseLessonInteractionListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
