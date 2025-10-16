# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#list
    class ExperienceListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique ID representing this experience
      #
      #   @return [String]
      required :id, String

      # @!attribute app
      #   The experience interface for this experience.
      #
      #   @return [WhopSDK::Models::ExperienceListResponse::App]
      required :app, -> { WhopSDK::Models::ExperienceListResponse::App }

      # @!attribute company
      #   The company that owns this experience.
      #
      #   @return [WhopSDK::Models::ExperienceListResponse::Company]
      required :company, -> { WhopSDK::Models::ExperienceListResponse::Company }

      # @!attribute created_at
      #   The timestamp of when this experience was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   The written name of the description.
      #
      #   @return [String]
      required :name, String

      # @!attribute order
      #   The order of the experience in the section
      #
      #   @return [String, nil]
      required :order, String, nil?: true

      # @!method initialize(id:, app:, company:, created_at:, name:, order:)
      #   An object representing an experience belonging to a company.
      #
      #   @param id [String] The unique ID representing this experience
      #
      #   @param app [WhopSDK::Models::ExperienceListResponse::App] The experience interface for this experience.
      #
      #   @param company [WhopSDK::Models::ExperienceListResponse::Company] The company that owns this experience.
      #
      #   @param created_at [Time] The timestamp of when this experience was created.
      #
      #   @param name [String] The written name of the description.
      #
      #   @param order [String, nil] The order of the experience in the section

      # @see WhopSDK::Models::ExperienceListResponse#app
      class App < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the app
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the app
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   The experience interface for this experience.
        #
        #   @param id [String] The ID of the app
        #
        #   @param name [String] The name of the app
      end

      # @see WhopSDK::Models::ExperienceListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID (tag) of the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The slug/route of the company on the Whop site.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The title of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   The company that owns this experience.
        #
        #   @param id [String] The ID (tag) of the company.
        #
        #   @param route [String] The slug/route of the company on the Whop site.
        #
        #   @param title [String] The title of the company.
      end
    end
  end
end
