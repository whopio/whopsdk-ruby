# typed: strong

module Whopsdk
  module Models
    class MembershipUpdateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::MembershipUpdateParams, Whopsdk::Internal::AnyHash)
        end

      # The metadata to update the membership with.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      sig do
        params(
          metadata: T.nilable(T.anything),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The metadata to update the membership with.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            metadata: T.nilable(T.anything),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
