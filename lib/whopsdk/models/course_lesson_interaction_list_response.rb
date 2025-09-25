# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::CourseLessonInteractions#list
    class CourseLessonInteractionListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute data
      #   A list of nodes.
      #
      #   @return [Array<Whopsdk::Models::CourseLessonInteractionListItem, nil>, nil]
      required :data,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::CourseLessonInteractionListItem, nil?: true] },
               nil?: true

      # @!attribute page_info
      #   Information to aid in pagination.
      #
      #   @return [Whopsdk::Models::PageInfo]
      required :page_info, -> { Whopsdk::PageInfo }

      # @!method initialize(data:, page_info:)
      #   The connection type for LessonInteraction.
      #
      #   @param data [Array<Whopsdk::Models::CourseLessonInteractionListItem, nil>, nil] A list of nodes.
      #
      #   @param page_info [Whopsdk::Models::PageInfo] Information to aid in pagination.
    end
  end
end
