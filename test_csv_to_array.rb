# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/csv_to_array.rb')
#require_relative File.expand_path(File.dirname(__FILE__) + '/csv_to_array.rb')
require 'test/unit'

class TestCsvToArray  < Test::Unit::TestCase
  @@initialized = false
  
  def setup
    csv_data = CsvToArray.new(DATA) unless @@initialized
    @@csv = csv_data unless @@initialized
    @@initialized = true
  end
  
  def test_initialize
    assert_not_equal([].length, @@csv.rows.length, "Array is Empty")
  end
  
  def test_read
    expecteds = [['A01', 'A02', 'A03', 'A04'], ['B01', 'B02', '', 'B04'], ['', 'C02', 'C03', 'C04'], ['D01', 'D02', 'D03', ''], ['', '', '', '']]
    @@csv.rows.each_with_index do |row, index|
      assert_equal(expecteds[index], row, "expected #{expecteds[index]} but actual #{row}")
    end
  end
end

__END__
A01,A02,A03,A04
B01,B02,,B04
,C02,C03,C04
D01,D02,D03,
,,,
