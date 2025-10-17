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

      # The ID of the app to create the experience for
      sig { returns(String) }
      attr_accessor :app_id

      # The ID of the company to create the experience for
      sig { returns(String) }
      attr_accessor :company_id

      # The name of the experience
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The ID of the section to create the experience in
      sig { returns(T.nilable(String)) }
      attr_accessor :section_id

      sig do
        params(
          app_id: String,
          company_id: String,
          name: T.nilable(String),
          section_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the app to create the experience for
        app_id:,
        # The ID of the company to create the experience for
        company_id:,
        # The name of the experience
        name: nil,
        # The ID of the section to create the experience in
        section_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            app_id: String,
            company_id: String,
            name: T.nilable(String),
            section_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
