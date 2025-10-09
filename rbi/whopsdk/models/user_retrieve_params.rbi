# typed: strong

module Whopsdk
  module Models
    class UserRetrieveParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::UserRetrieveParams, Whopsdk::Internal::AnyHash)
        end

      sig do
        params(request_options: Whopsdk::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Whopsdk::RequestOptions }) }
      def to_hash
      end
    end
  end
end
