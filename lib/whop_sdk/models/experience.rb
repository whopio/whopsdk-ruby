# frozen_string_literal: true

module WhopSDK
  module Models
    class Experience < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique ID representing this experience
      #
      #   @return [String]
      required :id, String

      # @!attribute app
      #   The experience interface for this experience.
      #
      #   @return [WhopSDK::Models::Experience::App]
      required :app, -> { WhopSDK::Experience::App }

      # @!attribute company
      #   The company that owns this experience.
      #
      #   @return [WhopSDK::Models::Experience::Company]
      required :company, -> { WhopSDK::Experience::Company }

      # @!attribute created_at
      #   The timestamp of when this experience was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute image
      #   The logo for the experience.
      #
      #   @return [WhopSDK::Models::Experience::Image, nil]
      required :image, -> { WhopSDK::Experience::Image }, nil?: true

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

      # @!attribute products
      #   The access passes that are associated with this experience. This should not be
      #   used unless you are trying to list all access passes the experience has, for
      #   some reason. You probably don't want to use this though and should be using
      #   accessPass.
      #
      #   @return [Array<WhopSDK::Models::Experience::Product>]
      required :products, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Experience::Product] }

      # @!method initialize(id:, app:, company:, created_at:, image:, name:, order:, products:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Experience} for more details.
      #
      #   An object representing an experience belonging to a company.
      #
      #   @param id [String] The unique ID representing this experience
      #
      #   @param app [WhopSDK::Models::Experience::App] The experience interface for this experience.
      #
      #   @param company [WhopSDK::Models::Experience::Company] The company that owns this experience.
      #
      #   @param created_at [Time] The timestamp of when this experience was created.
      #
      #   @param image [WhopSDK::Models::Experience::Image, nil] The logo for the experience.
      #
      #   @param name [String] The written name of the description.
      #
      #   @param order [String, nil] The order of the experience in the section
      #
      #   @param products [Array<WhopSDK::Models::Experience::Product>] The access passes that are associated with this experience. This should not be u

      # @see WhopSDK::Models::Experience#app
      class App < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the app
        #
        #   @return [String]
        required :id, String

        # @!attribute icon
        #   The icon for the app. This icon is shown on discovery, on the product page, on
        #   checkout, and as a default icon for the experiences.
        #
        #   @return [WhopSDK::Models::Experience::App::Icon, nil]
        required :icon, -> { WhopSDK::Experience::App::Icon }, nil?: true

        # @!attribute name
        #   The name of the app
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, icon:, name:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Experience::App} for more details.
        #
        #   The experience interface for this experience.
        #
        #   @param id [String] The ID of the app
        #
        #   @param icon [WhopSDK::Models::Experience::App::Icon, nil] The icon for the app. This icon is shown on discovery, on the product page, on c
        #
        #   @param name [String] The name of the app

        # @see WhopSDK::Models::Experience::App#icon
        class Icon < WhopSDK::Internal::Type::BaseModel
          # @!attribute url
          #   This is the URL you use to render optimized attachments on the client. This
          #   should be used for apps.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Experience::App::Icon} for more details.
          #
          #   The icon for the app. This icon is shown on discovery, on the product page, on
          #   checkout, and as a default icon for the experiences.
          #
          #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
        end
      end

      # @see WhopSDK::Models::Experience#company
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

      # @see WhopSDK::Models::Experience#image
      class Image < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   This is the URL you use to render optimized attachments on the client. This
        #   should be used for apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Experience::Image} for more details.
        #
        #   The logo for the experience.
        #
        #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public product.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The route of the product.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The title of the product. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   An object representing a (sanitized) access pass.
        #
        #   @param id [String] The internal ID of the public product.
        #
        #   @param route [String] The route of the product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end
    end
  end
end
