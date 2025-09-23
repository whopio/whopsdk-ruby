# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::CourseLessonInteractions#list
    class CourseLessonInteractionListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Whopsdk::Models::CourseLessonInteractionListResponse::Data, nil>, nil]
      required :data,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::CourseLessonInteractionListResponse::Data, nil?: true] },
               nil?: true

      # @!attribute page_info
      #
      #   @return [Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo]
      required :page_info, -> { Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   @param data [Array<Whopsdk::Models::CourseLessonInteractionListResponse::Data, nil>, nil]
      #   @param page_info [Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo]

      class Data < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute completed
        #
        #   @return [Boolean]
        required :completed, Whopsdk::Internal::Type::Boolean

        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer

        # @!attribute lesson
        #
        #   @return [Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson]
        required :lesson, -> { Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson }

        # @!attribute user
        #
        #   @return [Whopsdk::Models::CourseLessonInteractionListResponse::Data::User]
        required :user, -> { Whopsdk::Models::CourseLessonInteractionListResponse::Data::User }

        # @!method initialize(id:, completed:, created_at:, lesson:, user:)
        #   @param id [String]
        #   @param completed [Boolean]
        #   @param created_at [Integer]
        #   @param lesson [Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson]
        #   @param user [Whopsdk::Models::CourseLessonInteractionListResponse::Data::User]

        # @see Whopsdk::Models::CourseLessonInteractionListResponse::Data#lesson
        class Lesson < Whopsdk::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute title
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, title:)
          #   @param id [String]
          #   @param title [String]
        end

        # @see Whopsdk::Models::CourseLessonInteractionListResponse::Data#user
        class User < Whopsdk::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute username
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, username:)
          #   @param id [String]
          #   @param name [String, nil]
          #   @param username [String]
        end
      end

      # @see Whopsdk::Models::CourseLessonInteractionListResponse#page_info
      class PageInfo < Whopsdk::Internal::Type::BaseModel
        # @!attribute end_cursor
        #
        #   @return [String, nil]
        required :end_cursor, String, nil?: true

        # @!attribute has_next_page
        #
        #   @return [Boolean]
        required :has_next_page, Whopsdk::Internal::Type::Boolean

        # @!attribute has_previous_page
        #
        #   @return [Boolean]
        required :has_previous_page, Whopsdk::Internal::Type::Boolean

        # @!attribute start_cursor
        #
        #   @return [String, nil]
        required :start_cursor, String, nil?: true

        # @!method initialize(end_cursor:, has_next_page:, has_previous_page:, start_cursor:)
        #   @param end_cursor [String, nil]
        #   @param has_next_page [Boolean]
        #   @param has_previous_page [Boolean]
        #   @param start_cursor [String, nil]
      end
    end
  end
end
