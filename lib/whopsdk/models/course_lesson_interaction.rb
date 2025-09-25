# frozen_string_literal: true

module Whopsdk
  module Models
    class CourseLessonInteraction < Whopsdk::Internal::Type::BaseModel
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
      #   @return [Whopsdk::Models::CourseLessonInteraction::Lesson]
      required :lesson, -> { Whopsdk::CourseLessonInteraction::Lesson }

      # @!attribute user
      #   The user who interacted with the lesson
      #
      #   @return [Whopsdk::Models::CourseLessonInteraction::User]
      required :user, -> { Whopsdk::CourseLessonInteraction::User }

      # @!method initialize(id:, completed:, created_at:, lesson:, user:)
      #   A lesson interaction tracking user progress in courses
      #
      #   @param id [String] The ID of the lesson interaction
      #
      #   @param completed [Boolean] Whether the lesson has been completed by the user
      #
      #   @param created_at [Integer] When the interaction was created
      #
      #   @param lesson [Whopsdk::Models::CourseLessonInteraction::Lesson] The lesson this interaction is for
      #
      #   @param user [Whopsdk::Models::CourseLessonInteraction::User] The user who interacted with the lesson

      # @see Whopsdk::Models::CourseLessonInteraction#lesson
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

      # @see Whopsdk::Models::CourseLessonInteraction#user
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
