# Calculate the number of grains of wheat on a chessboard
# given that the number on each square doubles.
class Grains
  CHESS_SIZE = 64
  ERROR_MESSAGE = "Square number should be included between 1 and #{CHESS_SIZE}"

  class << self
    def square(square_number)
      if non_existing_square_number(square_number)
        raise ArgumentError, ERROR_MESSAGE
      end
      (2**square_number) / 2
    end

    def total
      1.upto(CHESS_SIZE).inject { |sum, n| sum + square(n) }
    end

    private

    def non_existing_square_number(square_number)
      square_number <= 0 || square_number > CHESS_SIZE
    end
  end
end

module BookKeeping
  VERSION = 1
end
