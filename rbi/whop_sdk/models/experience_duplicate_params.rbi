# typed: strong

module WhopSDK
  module Models
    class ExperienceDuplicateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ExperienceDuplicateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The display name for the duplicated experience. Defaults to the original
      # experience's name.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          id: String,
          name: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The display name for the duplicated experience. Defaults to the original
        # experience's name.
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            name: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
