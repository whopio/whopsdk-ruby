# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::CourseLessonInteractions#retrieve
    class CourseLessonInteractionRetrieveResponse < Whopsdk::Internal::Type::BaseModel
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
      #   @return [Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson]
      required :lesson, -> { Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson }

      # @!attribute user
      #
      #   @return [Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User]
      required :user, -> { Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User }

      # @!method initialize(id:, completed:, created_at:, lesson:, user:)
      #   @param id [String]
      #   @param completed [Boolean]
      #   @param created_at [Integer]
      #   @param lesson [Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson]
      #   @param user [Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User]

      # @see Whopsdk::Models::CourseLessonInteractionRetrieveResponse#lesson
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

      # @see Whopsdk::Models::CourseLessonInteractionRetrieveResponse#user
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
  end
end
