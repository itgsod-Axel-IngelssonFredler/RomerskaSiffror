require 'rspec'
require_relative '../lib/romanize'

describe 'converting arabic numerals to roman' do

  it 'should take a number as argument' do
    expect { romanize() }.to raise_error ArgumentError
    expect { romanize(1000) }.not_to raise_error
  end

  #Detta test kan kommenteras bort om man inte vill test 'Undantagshantering' på C- eller A-nivå
  it 'should raise ArgumentError with correct error message if called with zero (romans had no way of writing zero' do
    expect { romanize(0) }.to raise_error ArgumentError, 'can not encode zero'
  end

  #Detta test kan kommenteras bort om man inte vill test 'Undantagshantering' på C- eller A-nivå
  it 'should raise ArgumentError with correct error message if called with negative number' do
    expect { romanize(rand(1000) * -1) }.to raise_error ArgumentError, 'can not encode negative number'
  end

  it 'should return a string' do
    expect(romanize(rand(1000))).to be_instance_of String
  end

  it 'should encode single-digit numbers' do
    expect( romanize(1) ).to match 'I'
    expect( romanize(2) ).to match 'II'
    expect( romanize(3) ).to match 'III'
    expect( romanize(4) ).to match 'IV'
    expect( romanize(5) ).to match 'V'
    expect( romanize(6) ).to match 'VI'
    expect( romanize(7) ).to match 'VII'
    expect( romanize(8) ).to match 'VIII'
    expect( romanize(9) ).to match 'IX'
  end

  it 'should encode double digit numbers' do
    romanize(10).should match 'X'
    romanize(12).should match 'XII'
    romanize(20).should match 'XX'
    romanize(36).should match 'XXXVI'
    romanize(44).should match 'XLIV'
    romanize(87).should match 'LXXXVII'
    romanize(92).should match 'XCII'
  end

  # it 'should encode triple digit numbers' do
  #   romanize(100).should match 'C'
  #   romanize(666).should match 'DCLXVI'
  #   romanize(747).should match 'DCCXLVII'
  #   romanize(999).should match 'CMXCIX'
  # end
  #
  # it 'should encode four digit numbers' do
  #   romanize(1000).should match 'M'
  #   romanize(1066).should match 'MLXVI'       # Battle of Hastings
  #   romanize(1492).should match 'MCDXCII'     # Columbus 'discovers' America
  #   romanize(1978).should match 'MCMLXXVIII'  # I am born
  #   romanize(2063).should match 'MMLXIII'     # First Contact
  # end
end