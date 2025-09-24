# typed: strong

module Whopsdk
  module Models
    class InvoiceVoidParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::InvoiceVoidParams, Whopsdk::Internal::AnyHash)
        end

      # Represents textual data as UTF-8 character sequences. This type is most often
      # used by GraphQL to represent free-form human-readable text.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_mutation_id

      sig do
        params(
          client_mutation_id: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        client_mutation_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            client_mutation_id: T.nilable(String),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
