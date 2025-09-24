# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#void
    class InvoiceVoidParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute client_mutation_id
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String, nil]
      optional :client_mutation_id, String, nil?: true

      # @!method initialize(client_mutation_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::InvoiceVoidParams} for more details.
      #
      #   @param client_mutation_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
