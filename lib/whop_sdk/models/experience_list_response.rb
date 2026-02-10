# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#list
    class ExperienceListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the experience.
      #
      #   @return [String]
      required :id, String

      # @!attribute app
      #   The app that powers this experience, defining its interface and behavior.
      #
      #   @return [WhopSDK::Models::ExperienceListResponse::App]
      required :app, -> { WhopSDK::Models::ExperienceListResponse::App }

      # @!attribute company
      #   The company that owns this experience.
      #
      #   @return [WhopSDK::Models::ExperienceListResponse::Company]
      required :company, -> { WhopSDK::Models::ExperienceListResponse::Company }

      # @!attribute created_at
      #   The datetime the experience was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute image
      #   The custom logo image for this experience. Null if no custom logo has been
      #   uploaded.
      #
      #   @return [WhopSDK::Models::ExperienceListResponse::Image, nil]
      required :image, -> { WhopSDK::Models::ExperienceListResponse::Image }, nil?: true

      # @!attribute is_public
      #   Whether this experience is publicly visible to all users, including those
      #   without a membership.
      #
      #   @return [Boolean]
      required :is_public, WhopSDK::Internal::Type::Boolean

      # @!attribute name
      #   The display name of this experience shown to users in the product navigation.
      #   Maximum 255 characters.
      #
      #   @return [String]
      required :name, String

      # @!attribute order
      #   The sort position of this experience within its section. Lower values appear
      #   first. Null if no position has been set.
      #
      #   @return [String, nil]
      required :order, String, nil?: true

      # @!method initialize(id:, app:, company:, created_at:, image:, is_public:, name:, order:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ExperienceListResponse} for more details.
      #
      #   An experience is a feature or content module within a product, such as a chat,
      #   course, or app.
      #
      #   @param id [String] The unique identifier for the experience.
      #
      #   @param app [WhopSDK::Models::ExperienceListResponse::App] The app that powers this experience, defining its interface and behavior.
      #
      #   @param company [WhopSDK::Models::ExperienceListResponse::Company] The company that owns this experience.
      #
      #   @param created_at [Time] The datetime the experience was created.
      #
      #   @param image [WhopSDK::Models::ExperienceListResponse::Image, nil] The custom logo image for this experience. Null if no custom logo has been uploa
      #
      #   @param is_public [Boolean] Whether this experience is publicly visible to all users, including those withou
      #
      #   @param name [String] The display name of this experience shown to users in the product navigation. Ma
      #
      #   @param order [String, nil] The sort position of this experience within its section. Lower values appear fir

      # @see WhopSDK::Models::ExperienceListResponse#app
      class App < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the app.
        #
        #   @return [String]
        required :id, String

        # @!attribute icon
        #   The icon image for this app, displayed on the app store, product pages,
        #   checkout, and as the default icon for experiences using this app.
        #
        #   @return [WhopSDK::Models::ExperienceListResponse::App::Icon, nil]
        required :icon, -> { WhopSDK::Models::ExperienceListResponse::App::Icon }, nil?: true

        # @!attribute name
        #   The display name of this app shown on the app store and in experience
        #   navigation. Maximum 30 characters.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, icon:, name:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ExperienceListResponse::App} for more details.
        #
        #   The app that powers this experience, defining its interface and behavior.
        #
        #   @param id [String] The unique identifier for the app.
        #
        #   @param icon [WhopSDK::Models::ExperienceListResponse::App::Icon, nil] The icon image for this app, displayed on the app store, product pages, checkout
        #
        #   @param name [String] The display name of this app shown on the app store and in experience navigation

        # @see WhopSDK::Models::ExperienceListResponse::App#icon
        class Icon < WhopSDK::Internal::Type::BaseModel
          # @!attribute url
          #   A pre-optimized URL for rendering this attachment on the client. This should be
          #   used for displaying attachments in apps.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::ExperienceListResponse::App::Icon} for more details.
          #
          #   The icon image for this app, displayed on the app store, product pages,
          #   checkout, and as the default icon for experiences using this app.
          #
          #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
        end
      end

      # @see WhopSDK::Models::ExperienceListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The display name of the company shown to customers.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ExperienceListResponse::Company} for more details.
        #
        #   The company that owns this experience.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param route [String] The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
        #
        #   @param title [String] The display name of the company shown to customers.
      end

      # @see WhopSDK::Models::ExperienceListResponse#image
      class Image < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ExperienceListResponse::Image} for more details.
        #
        #   The custom logo image for this experience. Null if no custom logo has been
        #   uploaded.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end
    end
  end
end
