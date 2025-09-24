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
      #   Information about pagination in a connection.
      #
      #   @return [Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo]
      required :page_info, -> { Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   The connection type for LessonInteraction.
      #
      #   @param data [Array<Whopsdk::Models::CourseLessonInteractionListResponse::Data, nil>, nil]
      #
      #   @param page_info [Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo] Information about pagination in a connection.

      class Data < Whopsdk::Internal::Type::BaseModel
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
        #   @return [Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson]
        required :lesson, -> { Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson }

        # @!attribute user
        #   An object representing a (sanitized) user of the site.
        #
        #   @return [Whopsdk::Models::CourseLessonInteractionListResponse::Data::User]
        required :user, -> { Whopsdk::Models::CourseLessonInteractionListResponse::Data::User }

        # @!method initialize(id:, completed:, created_at:, lesson:, user:)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::CourseLessonInteractionListResponse::Data} for more details.
        #
        #   A lesson interaction tracking user progress in courses
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param completed [Boolean] Represents `true` or `false` values.
        #
        #   @param created_at [Integer] A valid timestamp in seconds, transported as an integer
        #
        #   @param lesson [Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson] A lesson from the courses app
        #
        #   @param user [Whopsdk::Models::CourseLessonInteractionListResponse::Data::User] An object representing a (sanitized) user of the site.

        # @see Whopsdk::Models::CourseLessonInteractionListResponse::Data#lesson
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
          #   {Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson} for more
          #   details.
          #
          #   A lesson from the courses app
          #
          #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
          #
          #   @param title [String] Represents textual data as UTF-8 character sequences. This type is most often us
        end

        # @see Whopsdk::Models::CourseLessonInteractionListResponse::Data#user
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
          #   {Whopsdk::Models::CourseLessonInteractionListResponse::Data::User} for more
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

      # @see Whopsdk::Models::CourseLessonInteractionListResponse#page_info
      class PageInfo < Whopsdk::Internal::Type::BaseModel
        # @!attribute end_cursor
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        required :end_cursor, String, nil?: true

        # @!attribute has_next_page
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean]
        required :has_next_page, Whopsdk::Internal::Type::Boolean

        # @!attribute has_previous_page
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean]
        required :has_previous_page, Whopsdk::Internal::Type::Boolean

        # @!attribute start_cursor
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        required :start_cursor, String, nil?: true

        # @!method initialize(end_cursor:, has_next_page:, has_previous_page:, start_cursor:)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo} for more
        #   details.
        #
        #   Information about pagination in a connection.
        #
        #   @param end_cursor [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param has_next_page [Boolean] Represents `true` or `false` values.
        #
        #   @param has_previous_page [Boolean] Represents `true` or `false` values.
        #
        #   @param start_cursor [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      end
    end
  end
end
