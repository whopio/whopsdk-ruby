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

      # The name of the new experience
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          name: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the new experience
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { name: T.nilable(String), request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
