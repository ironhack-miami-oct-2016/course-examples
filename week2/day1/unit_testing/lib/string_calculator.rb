class StringCalculator
  def add(numbers_string = "")
    #  0 1 2
    # "8 , 4"

    #  0   1   2
    # "6" nil nil

    #     0   1   2
    # "" nil nil nil

    # nil.to_i == 0

    numbers_string[0].to_i + numbers_string[2].to_i
  end
end
