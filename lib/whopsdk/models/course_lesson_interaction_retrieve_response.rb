# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::CourseLessonInteractions#retrieve
    class CourseLessonInteractionRetrieveResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute completed
      #   Represents `true` or `false` values.
      #
      #   @return [Boolean]
      required :completed, Whopsdk::Internal::Type::Boolean

      # @!attribute created_at
      #   A valid timestamp in seconds, transported as an integer
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute lesson
      #   A lesson from the courses app
      #
      #   @return [Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson]
      required :lesson, -> { Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson }

      # @!attribute user
      #   An object representing a (sanitized) user of the site.
      #
      #   @return [Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User]
      required :user, -> { Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User }

      # @!method initialize(id:, completed:, created_at:, lesson:, user:)
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::CourseLessonInteractionRetrieveResponse} for more details.
      #
      #   A lesson interaction tracking user progress in courses
      #
      #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param completed [Boolean] Represents `true` or `false` values.
      #
      #   @param created_at [Integer] A valid timestamp in seconds, transported as an integer
      #
      #   @param lesson [Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson] A lesson from the courses app
      #
      #   @param user [Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User] An object representing a (sanitized) user of the site.

      # @see Whopsdk::Models::CourseLessonInteractionRetrieveResponse#lesson
      class Lesson < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson} for more
        #   details.
        #
        #   A lesson from the courses app
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param title [String] Represents textual data as UTF-8 character sequences. This type is most often us
      end

      # @see Whopsdk::Models::CourseLessonInteractionRetrieveResponse#user
      class User < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User} for more
        #   details.
        #
        #   An object representing a (sanitized) user of the site.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param name [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param username [String] Represents textual data as UTF-8 character sequences. This type is most often us
      end
    end
  end
end
