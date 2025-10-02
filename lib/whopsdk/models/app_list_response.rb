# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Apps#list
    class AppListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the app
      #
      #   @return [String]
      required :id, String

      # @!attribute base_url
      #   The base url of the app
      #
      #   @return [String, nil]
      required :base_url, String, nil?: true

      # @!attribute dashboard_path
      #   The path part for a specific view of the app. This is the template part of the
      #   url after the base domain. Eg: /experiences/[experienceId]
      #
      #   @return [String, nil]
      required :dashboard_path, String, nil?: true

      # @!attribute description
      #   The description of the app
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discover_path
      #   The path part for a specific view of the app. This is the template part of the
      #   url after the base domain. Eg: /experiences/[experienceId]
      #
      #   @return [String, nil]
      required :discover_path, String, nil?: true

      # @!attribute domain_id
      #   The unique part of the proxied domain for this app. Used to generate the base
      #   url used to display the app inside the whop platform. Refers to the id part in
      #   the final url: https://{domain_id}.apps.whop.com
      #
      #   @return [String]
      required :domain_id, String

      # @!attribute experience_path
      #   The path part for a specific view of the app. This is the template part of the
      #   url after the base domain. Eg: /experiences/[experienceId]
      #
      #   @return [String, nil]
      required :experience_path, String, nil?: true

      # @!attribute name
      #   The name of the app
      #
      #   @return [String]
      required :name, String

      # @!attribute status
      #   The status of an experience interface
      #
      #   @return [Symbol, Whopsdk::Models::AppStatuses, nil]
      required :status, enum: -> { Whopsdk::AppStatuses }, nil?: true

      # @!attribute verified
      #   Whether this app has been verified by Whop. Verified apps are endorsed by whop
      #   and are shown in the 'featured apps' section of the app store.
      #
      #   @return [Boolean]
      required :verified, Whopsdk::Internal::Type::Boolean

      # @!method initialize(id:, base_url:, dashboard_path:, description:, discover_path:, domain_id:, experience_path:, name:, status:, verified:)
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::AppListResponse} for more details.
      #
      #   An object representing an app
      #
      #   @param id [String] The ID of the app
      #
      #   @param base_url [String, nil] The base url of the app
      #
      #   @param dashboard_path [String, nil] The path part for a specific view of the app. This is the template part of the u
      #
      #   @param description [String, nil] The description of the app
      #
      #   @param discover_path [String, nil] The path part for a specific view of the app. This is the template part of the u
      #
      #   @param domain_id [String] The unique part of the proxied domain for this app. Used to generate the base ur
      #
      #   @param experience_path [String, nil] The path part for a specific view of the app. This is the template part of the u
      #
      #   @param name [String] The name of the app
      #
      #   @param status [Symbol, Whopsdk::Models::AppStatuses, nil] The status of an experience interface
      #
      #   @param verified [Boolean] Whether this app has been verified by Whop. Verified apps are endorsed by whop a
    end
  end
end
