# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "whopsdk/version"
require_relative "whopsdk/internal/util"
require_relative "whopsdk/internal/type/converter"
require_relative "whopsdk/internal/type/unknown"
require_relative "whopsdk/internal/type/boolean"
require_relative "whopsdk/internal/type/file_input"
require_relative "whopsdk/internal/type/enum"
require_relative "whopsdk/internal/type/union"
require_relative "whopsdk/internal/type/array_of"
require_relative "whopsdk/internal/type/hash_of"
require_relative "whopsdk/internal/type/base_model"
require_relative "whopsdk/internal/type/base_page"
require_relative "whopsdk/internal/type/request_parameters"
require_relative "whopsdk/internal"
require_relative "whopsdk/request_options"
require_relative "whopsdk/file_part"
require_relative "whopsdk/errors"
require_relative "whopsdk/internal/transport/base_client"
require_relative "whopsdk/internal/transport/pooled_net_requester"
require_relative "whopsdk/client"
require_relative "whopsdk/internal/cursor_page"
require_relative "whopsdk/models/business_types"
require_relative "whopsdk/models/collection_method"
require_relative "whopsdk/models/company"
require_relative "whopsdk/models/company_retrieve_params"
require_relative "whopsdk/models/course_lesson_interaction"
require_relative "whopsdk/models/course_lesson_interaction_list_item"
require_relative "whopsdk/models/course_lesson_interaction_list_params"
require_relative "whopsdk/models/course_lesson_interaction_retrieve_params"
require_relative "whopsdk/models/currency"
require_relative "whopsdk/models/industry_types"
require_relative "whopsdk/models/invoice"
require_relative "whopsdk/models/invoice_create_params"
require_relative "whopsdk/models/invoice_create_response"
require_relative "whopsdk/models/invoice_list_item"
require_relative "whopsdk/models/invoice_list_params"
require_relative "whopsdk/models/invoice_retrieve_params"
require_relative "whopsdk/models/invoice_status"
require_relative "whopsdk/models/invoice_void_params"
require_relative "whopsdk/models/invoice_void_response"
require_relative "whopsdk/models/page_info"
require_relative "whopsdk/models"
require_relative "whopsdk/resources/access_passes"
require_relative "whopsdk/resources/companies"
require_relative "whopsdk/resources/course_lesson_interactions"
require_relative "whopsdk/resources/invoices"
