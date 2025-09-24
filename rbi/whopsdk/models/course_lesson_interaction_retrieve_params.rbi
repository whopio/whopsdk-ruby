# typed: strong

module Whopsdk
  module Models
    class CourseLessonInteractionRetrieveParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::CourseLessonInteractionRetrieveParams,
            Whopsdk::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :query_id

      sig do
        params(
          query_id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(query_id:, request_options: {})
      end

      sig do
        override.returns(
          { query_id: String, request_options: Whopsdk::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
