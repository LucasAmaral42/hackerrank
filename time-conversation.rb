# Complete the timeConversion function in the editor below. 
# It should return a new string representing the input time in 24 hour format.
# timeConversion has the following parameter(s):
#     s: a string representing time in 12 hour format

def converte(s)
  s = s.split(':')
  s = s.map(&:to_i)
  s[0] += 12 
  s[0] = 0 if s[0] == 24
	s.join(":")
end

def timeConversion(s)
  if s.include?('AM')
    s.delete("AM")
  else
    s = s.delete("PM")
    s = converte(s)
  end
  s
end

s = gets.to_s.rstrip

result = timeConversion s

print result