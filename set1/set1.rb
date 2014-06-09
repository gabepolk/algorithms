module Set1
  def self.swap_small(array)
    if array.count == 1
      return array
    elsif array.count == 2
      return array.sort
    elsif array.sort.first == array[0]
      array
    else
      # O(n)
      smallest = array.sort.first
      # O(n)
      array.each_with_index do |item, idx|
        if item == smallest
          # O(2)
          array[0], array[idx] = array[idx], array[0]
        end
      end
      # Total: O(2n^2)
    end
  end

  def self.find_sum_2(array, sum = 0)
    if array.count == 0
      return false
    elsif array.count == 1 && array.first == 0
      return true
    elsif array.include?(0)
      return true
    elsif array.count != 0
      array.detect{|num| num < 1 && array.include?(num * -1)} != nil
    else
      # Total: O(n^2)
      array.each do |num1|
        array.each do |num2|
          if num1 - num2 == 0 && num2 - num1 == 0
            return false
          end
        end
      end
    end
  end

  def self.find_sum_3(array)
    if array.count == 0
      return false
    elsif array.count == 1 && array[0] == 0
      return true
    elsif array.include?(0)
      return true
    elsif array.count != 0
      # Total: O(n^3)
      array.each do |num1|
        array.each do |num2|
          array.each do |num3|
            if num1 + num2 + num3 == 0
              return true
            else
              return false
            end
          end
        end
      end
    end
  end
end
