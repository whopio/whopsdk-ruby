# typed: strong

module WhopSDK
  module Models
    # The available languages for a course
    module Languages
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Languages) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EN = T.let(:en, WhopSDK::Languages::TaggedSymbol)
      ES = T.let(:es, WhopSDK::Languages::TaggedSymbol)
      IT = T.let(:it, WhopSDK::Languages::TaggedSymbol)
      PT = T.let(:pt, WhopSDK::Languages::TaggedSymbol)
      DE = T.let(:de, WhopSDK::Languages::TaggedSymbol)
      FR = T.let(:fr, WhopSDK::Languages::TaggedSymbol)
      PL = T.let(:pl, WhopSDK::Languages::TaggedSymbol)
      RU = T.let(:ru, WhopSDK::Languages::TaggedSymbol)
      NL = T.let(:nl, WhopSDK::Languages::TaggedSymbol)
      CA = T.let(:ca, WhopSDK::Languages::TaggedSymbol)
      TR = T.let(:tr, WhopSDK::Languages::TaggedSymbol)
      SV = T.let(:sv, WhopSDK::Languages::TaggedSymbol)
      UK = T.let(:uk, WhopSDK::Languages::TaggedSymbol)
      NO = T.let(:no, WhopSDK::Languages::TaggedSymbol)
      FI = T.let(:fi, WhopSDK::Languages::TaggedSymbol)
      SK = T.let(:sk, WhopSDK::Languages::TaggedSymbol)
      EL = T.let(:el, WhopSDK::Languages::TaggedSymbol)
      CS = T.let(:cs, WhopSDK::Languages::TaggedSymbol)
      HR = T.let(:hr, WhopSDK::Languages::TaggedSymbol)
      DA = T.let(:da, WhopSDK::Languages::TaggedSymbol)
      RO = T.let(:ro, WhopSDK::Languages::TaggedSymbol)
      BG = T.let(:bg, WhopSDK::Languages::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::Languages::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
