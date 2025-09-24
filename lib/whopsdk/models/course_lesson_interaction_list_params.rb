# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::CourseLessonInteractions#list
    class CourseLessonInteractionListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute after
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute completed
      #   Represents `true` or `false` values.
      #
      #   @return [Boolean, nil]
      optional :completed, Whopsdk::Internal::Type::Boolean, nil?: true

      # @!attribute course_id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String, nil]
      optional :course_id, String, nil?: true

      # @!attribute first
      #   Represents non-fractional signed whole numeric values. Int can represent values
      #   between -(2^31) and 2^31 - 1.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Represents non-fractional signed whole numeric values. Int can represent values
      #   between -(2^31) and 2^31 - 1.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute lesson_id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String, nil]
      optional :lesson_id, String, nil?: true

      # @!attribute user_id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(after: nil, before: nil, completed: nil, course_id: nil, first: nil, last: nil, lesson_id: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::CourseLessonInteractionListParams} for more details.
      #
      #   @param after [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param before [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param completed [Boolean, nil] Represents `true` or `false` values.
      #
      #   @param course_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param first [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
      #
      #   @param last [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
      #
      #   @param lesson_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param user_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
