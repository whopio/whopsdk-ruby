# frozen_string_literal: true

module WhopSDK
  module Models
    # The available languages for a course
    module Languages
      extend WhopSDK::Internal::Type::Enum

      EN = :en
      ES = :es
      IT = :it
      PT = :pt
      DE = :de
      FR = :fr
      PL = :pl
      RU = :ru
      NL = :nl
      CA = :ca
      TR = :tr
      SV = :sv
      UK = :uk
      NO = :no
      FI = :fi
      SK = :sk
      EL = :el
      CS = :cs
      HR = :hr
      DA = :da
      RO = :ro
      BG = :bg

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
