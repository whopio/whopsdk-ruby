# typed: strong

module WhopSDK
  module Models
    class CourseCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the experience to create the course in (e.g.,
      # "exp_XXXXX").
      sig { returns(String) }
      attr_accessor :experience_id

      # The display title of the course (e.g., "Introduction to Web Development").
      sig { returns(String) }
      attr_accessor :title

      # Whether the course awards students a PDF certificate after completing all
      # lessons.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :certificate_after_completion_enabled

      # The decimal order position of the course within its experience. Use fractional
      # values (e.g., "1.5") to place between existing courses.
      sig { returns(T.nilable(String)) }
      attr_accessor :order

      # Whether students must complete each lesson sequentially before advancing to the
      # next one.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :require_completing_lessons_in_order

      # A short tagline displayed beneath the course title (e.g., "Master the
      # fundamentals of design").
      sig { returns(T.nilable(String)) }
      attr_accessor :tagline

      # The thumbnail image for the course in PNG, JPEG, or GIF format.
      sig { returns(T.nilable(WhopSDK::CourseCreateParams::Thumbnail)) }
      attr_reader :thumbnail

      sig do
        params(
          thumbnail: T.nilable(WhopSDK::CourseCreateParams::Thumbnail::OrHash)
        ).void
      end
      attr_writer :thumbnail

      # The available visibilities for a course. Determines how / whether a course is
      # visible to users.
      sig { returns(T.nilable(WhopSDK::CourseVisibilities::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          experience_id: String,
          title: String,
          certificate_after_completion_enabled: T.nilable(T::Boolean),
          order: T.nilable(String),
          require_completing_lessons_in_order: T.nilable(T::Boolean),
          tagline: T.nilable(String),
          thumbnail: T.nilable(WhopSDK::CourseCreateParams::Thumbnail::OrHash),
          visibility: T.nilable(WhopSDK::CourseVisibilities::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the experience to create the course in (e.g.,
        # "exp_XXXXX").
        experience_id:,
        # The display title of the course (e.g., "Introduction to Web Development").
        title:,
        # Whether the course awards students a PDF certificate after completing all
        # lessons.
        certificate_after_completion_enabled: nil,
        # The decimal order position of the course within its experience. Use fractional
        # values (e.g., "1.5") to place between existing courses.
        order: nil,
        # Whether students must complete each lesson sequentially before advancing to the
        # next one.
        require_completing_lessons_in_order: nil,
        # A short tagline displayed beneath the course title (e.g., "Master the
        # fundamentals of design").
        tagline: nil,
        # The thumbnail image for the course in PNG, JPEG, or GIF format.
        thumbnail: nil,
        # The available visibilities for a course. Determines how / whether a course is
        # visible to users.
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            experience_id: String,
            title: String,
            certificate_after_completion_enabled: T.nilable(T::Boolean),
            order: T.nilable(String),
            require_completing_lessons_in_order: T.nilable(T::Boolean),
            tagline: T.nilable(String),
            thumbnail: T.nilable(WhopSDK::CourseCreateParams::Thumbnail),
            visibility: T.nilable(WhopSDK::CourseVisibilities::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseCreateParams::Thumbnail,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The thumbnail image for the course in PNG, JPEG, or GIF format.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
