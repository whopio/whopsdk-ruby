# typed: strong

module WhopSDK
  module Models
    class ExperienceCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ExperienceCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the app that powers this experience.
      sig { returns(String) }
      attr_accessor :app_id

      # The unique identifier of the company to create this experience for.
      sig { returns(String) }
      attr_accessor :company_id

      # Whether the experience is publicly accessible without a membership.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_public

      # A logo image displayed alongside the experience name.
      sig { returns(T.nilable(WhopSDK::ExperienceCreateParams::Logo)) }
      attr_reader :logo

      sig do
        params(
          logo: T.nilable(WhopSDK::ExperienceCreateParams::Logo::OrHash)
        ).void
      end
      attr_writer :logo

      # The display name of the experience. Defaults to the app's name if not provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The unique identifier of the section to place the experience in.
      sig { returns(T.nilable(String)) }
      attr_accessor :section_id

      sig do
        params(
          app_id: String,
          company_id: String,
          is_public: T.nilable(T::Boolean),
          logo: T.nilable(WhopSDK::ExperienceCreateParams::Logo::OrHash),
          name: T.nilable(String),
          section_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the app that powers this experience.
        app_id:,
        # The unique identifier of the company to create this experience for.
        company_id:,
        # Whether the experience is publicly accessible without a membership.
        is_public: nil,
        # A logo image displayed alongside the experience name.
        logo: nil,
        # The display name of the experience. Defaults to the app's name if not provided.
        name: nil,
        # The unique identifier of the section to place the experience in.
        section_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            app_id: String,
            company_id: String,
            is_public: T.nilable(T::Boolean),
            logo: T.nilable(WhopSDK::ExperienceCreateParams::Logo),
            name: T.nilable(String),
            section_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ExperienceCreateParams::Logo,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # A logo image displayed alongside the experience name.
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
