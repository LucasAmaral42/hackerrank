# Complete the timeConversion function in the editor below. 
# It should return a new string representing the input time in 24 hour format.
# timeConversion has the following parameter(s):
#     s: a string representing time in 12 hour format

def conversion(s)
  s = s.split(":")
  s = s.map(&:to_i)
  s[0] += 12 
  s[0] = 0 if s[0] == 24
  str = []
  s.each do |n|
    str.push "%02d" % n
  end
  str.join(":")
end

def is_midnight?(v)
  v == '12' ? true : false
end

def timeConversion(s)
  if s.include?('AM')
    s = s.delete("AM")
    fn = s.split(":")
    s = conversion(s) if is_midnight?(fn[0])
  else
    s = s.delete("PM")
    fn = s.split(":")
    s = conversion(s) if !is_midnight?(fn[0])
  end
  s
end

s = gets.to_s.rstrip

result = timeConversion s

print result