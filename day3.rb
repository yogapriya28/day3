
puts"-----------------exercise 20------------"
input=ARGV.first
current=open(input)
def print_content(f)
  puts f.read
end
def rewind(f)
  f.seek(0)
end
def print_line(count, f)
  puts "#{count}, #{f.gets.chomp}"
end
print_content(current)
rewind(current)
line_one=1
print_line(line_one,current)
line_two=line_one+1
print_line(line_two,current)
