# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#void
    class InvoiceVoidParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute body_id
      #
      #   @return [String]
      required :body_id, String, api_name: :id

      # @!attribute client_mutation_id
      #
      #   @return [String, nil]
      optional :client_mutation_id, String, nil?: true

      # @!method initialize(body_id:, client_mutation_id: nil, request_options: {})
      #   @param body_id [String]
      #   @param client_mutation_id [String, nil]
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
