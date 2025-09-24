# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#void
    class InvoiceVoidParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute client_mutation_id
      #
      #   @return [String, nil]
      optional :client_mutation_id, String, nil?: true

      # @!method initialize(client_mutation_id: nil, request_options: {})
      #   @param client_mutation_id [String, nil]
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
