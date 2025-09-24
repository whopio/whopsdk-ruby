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

      # A unique identifier for the client performing the mutation.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_mutation_id

      sig do
        params(
          client_mutation_id: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for the client performing the mutation.
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
