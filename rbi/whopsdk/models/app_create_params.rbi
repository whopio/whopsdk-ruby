# typed: strong

module Whopsdk
  module Models
    class AppCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::AppCreateParams, Whopsdk::Internal::AnyHash)
        end

      # The ID of the company to create the app for
      sig { returns(String) }
      attr_accessor :company_id

      # The name of the app to be created
      sig { returns(String) }
      attr_accessor :name

      # The base URL of the app to be created
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      sig do
        params(
          company_id: String,
          name: String,
          base_url: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to create the app for
        company_id:,
        # The name of the app to be created
        name:,
        # The base URL of the app to be created
        base_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            name: String,
            base_url: T.nilable(String),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
