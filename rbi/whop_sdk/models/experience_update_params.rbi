# typed: strong

module WhopSDK
  module Models
    class ExperienceUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ExperienceUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
      sig do
        returns(
          T.nilable(WhopSDK::ExperienceUpdateParams::AccessLevel::OrSymbol)
        )
      end
      attr_accessor :access_level

      # The logo for the experience
      sig { returns(T.nilable(WhopSDK::ExperienceUpdateParams::Logo)) }
      attr_reader :logo

      sig do
        params(
          logo: T.nilable(WhopSDK::ExperienceUpdateParams::Logo::OrHash)
        ).void
      end
      attr_writer :logo

      # The name of the experience.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The order of the experience in the section.
      sig { returns(T.nilable(String)) }
      attr_accessor :order

      # The ID of the section to update.
      sig { returns(T.nilable(String)) }
      attr_accessor :section_id

      sig do
        params(
          access_level:
            T.nilable(WhopSDK::ExperienceUpdateParams::AccessLevel::OrSymbol),
          logo: T.nilable(WhopSDK::ExperienceUpdateParams::Logo::OrHash),
          name: T.nilable(String),
          order: T.nilable(String),
          section_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
        access_level: nil,
        # The logo for the experience
        logo: nil,
        # The name of the experience.
        name: nil,
        # The order of the experience in the section.
        order: nil,
        # The ID of the section to update.
        section_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            access_level:
              T.nilable(WhopSDK::ExperienceUpdateParams::AccessLevel::OrSymbol),
            logo: T.nilable(WhopSDK::ExperienceUpdateParams::Logo),
            name: T.nilable(String),
            order: T.nilable(String),
            section_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
      module AccessLevel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::ExperienceUpdateParams::AccessLevel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC =
          T.let(
            :public,
            WhopSDK::ExperienceUpdateParams::AccessLevel::TaggedSymbol
          )
        PRIVATE =
          T.let(
            :private,
            WhopSDK::ExperienceUpdateParams::AccessLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::ExperienceUpdateParams::AccessLevel::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ExperienceUpdateParams::Logo,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing attachment object. Use this when updating a resource and
        # keeping a subset of the attachments. Don't use this unless you know what you're
        # doing.
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # This ID should be used the first time you upload an attachment. It is the ID of
        # the direct upload that was created when uploading the file to S3 via the
        # mediaDirectUpload mutation.
        sig { returns(T.nilable(String)) }
        attr_accessor :direct_upload_id

        # The logo for the experience
        sig do
          params(
            id: T.nilable(String),
            direct_upload_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          id: nil,
          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          direct_upload_id: nil
        )
        end

        sig do
          override.returns(
            { id: T.nilable(String), direct_upload_id: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
