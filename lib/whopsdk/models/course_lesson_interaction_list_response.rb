# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::CourseLessonInteractions#list
    class CourseLessonInteractionListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute data
      #   A list of nodes.
      #
      #   @return [Array<Whopsdk::Models::CourseLessonInteractionListResponse::Data, nil>, nil]
      required :data,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::CourseLessonInteractionListResponse::Data, nil?: true] },
               nil?: true

      # @!attribute page_info
      #   Information to aid in pagination.
      #
      #   @return [Whopsdk::Models::PageInfo]
      required :page_info, -> { Whopsdk::PageInfo }

      # @!method initialize(data:, page_info:)
      #   The connection type for LessonInteraction.
      #
      #   @param data [Array<Whopsdk::Models::CourseLessonInteractionListResponse::Data, nil>, nil] A list of nodes.
      #
      #   @param page_info [Whopsdk::Models::PageInfo] Information to aid in pagination.

      class Data < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the lesson interaction
        #
        #   @return [String]
        required :id, String

        # @!attribute completed
        #   Whether the lesson has been completed by the user
        #
        #   @return [Boolean]
        required :completed, Whopsdk::Internal::Type::Boolean

        # @!attribute created_at
        #   When the interaction was created
        #
        #   @return [Integer]
        required :created_at, Integer

        # @!attribute lesson
        #   The lesson this interaction is for
        #
        #   @return [Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson]
        required :lesson, -> { Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson }

        # @!attribute user
        #   The user who interacted with the lesson
        #
        #   @return [Whopsdk::Models::CourseLessonInteractionListResponse::Data::User]
        required :user, -> { Whopsdk::Models::CourseLessonInteractionListResponse::Data::User }

        # @!method initialize(id:, completed:, created_at:, lesson:, user:)
        #   A lesson interaction tracking user progress in courses
        #
        #   @param id [String] The ID of the lesson interaction
        #
        #   @param completed [Boolean] Whether the lesson has been completed by the user
        #
        #   @param created_at [Integer] When the interaction was created
        #
        #   @param lesson [Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson] The lesson this interaction is for
        #
        #   @param user [Whopsdk::Models::CourseLessonInteractionListResponse::Data::User] The user who interacted with the lesson

        # @see Whopsdk::Models::CourseLessonInteractionListResponse::Data#lesson
        class Lesson < Whopsdk::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the lesson
          #
          #   @return [String]
          required :id, String

          # @!attribute title
          #   The title of the lesson
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, title:)
          #   The lesson this interaction is for
          #
          #   @param id [String] The ID of the lesson
          #
          #   @param title [String] The title of the lesson
        end

        # @see Whopsdk::Models::CourseLessonInteractionListResponse::Data#user
        class User < Whopsdk::Internal::Type::BaseModel
          # @!attribute id
          #   The internal ID of the user.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   The name of the user from their Whop account.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute username
          #   The username of the user from their Whop account.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, username:)
          #   The user who interacted with the lesson
          #
          #   @param id [String] The internal ID of the user.
          #
          #   @param name [String, nil] The name of the user from their Whop account.
          #
          #   @param username [String] The username of the user from their Whop account.
        end
      end
    end
  end
end
