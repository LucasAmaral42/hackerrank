#!/bin/ruby

require 'json'
require 'stringio'

def seleciona(ar, maior)
  ar.select do |v|
    v == maior
  end
end

# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(ar)
  maior = ar[0]

  ar.each do |v|
		maior = v if v > maior
  end

  vet = seleciona ar, maior

  vet.count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = birthdayCakeCandles ar

fptr.write result
fptr.write "\n"

fptr.close()