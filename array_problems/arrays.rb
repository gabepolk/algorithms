require 'rubygems'
require 'pry-debugger'

module ArrayUtil
  def self.max(array)
    sorted = false

    until sorted
      sorted = true
      (array.count - 1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          sorted = false
        end
      end
    end

    array[array.count - 1]
  end

  def self.middle_element(array)
    if array.any? == false
      return nil
    elsif array.count == 1
      return array[0]
    elsif array.count % 2 != 0
      return array[array.count / 2]
    elsif array.count % 2 == 0
      return (array[array.count / 2 - 1] + array[array.count / 2]) / 2.0
    end
  end

  def self.sum_arrays(array1, array2)
    if array1.any? && array2.any? == false
      return []
    else
      new_array = []
      i = 0
      while i < array1.count
        new_array << array1[i] + array2[i]
        i += 1
      end
      return new_array
    end
  end
end
