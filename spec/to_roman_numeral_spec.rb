require_relative 'spec_helper'

describe 'Decimal to roman numeral converter' do

  roman_numbers = %w{I II III IV V VI VII VIII IX X XI XII XIII XIV XV XVI XVII XVIII XIX XX
                     XXI XXII XXIII XXIV XXV XXVI XXVII XXVIII XXIX XXX XXXI XXXII XXXIII XXXIV XXXV XXXVI XXXVII XXXVIII XXXIX XL
                     XLI
                    }
  (1..roman_numbers.size).each do |given|
    expected = roman_numbers[given-1]
    it "should return #{expected} for #{given}" do
      expect( plsql.to_roman_numeral(given) ).to eq( expected )
    end

  end


end