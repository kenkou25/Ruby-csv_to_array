# coding: utf-8

# csv into array
class CsvToArray
  
  def read_file(file)
    file.each do |line|
      @rows << line.chomp.split(@sep, -1)
    end
  end
  
  def read_path(file_path)
    File.open(file_path) do |f|
      read_file(f)
    end
  end
  
  def read(file)
    read_file(file) if file.instance_of?(File)
    read_path(file) if file.instance_of?(String)
  end
  
  def initialize(file, separetor = ',')
    @rows = []
    @sep = separetor
    read(file)
  end
  
  attr_reader :rows
end