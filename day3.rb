puts"-----------------exercise 16------------"
file=ARGV.first
puts"hit CTRL-C (^C)."
puts"hit RETURN."
$stdin.gets.chomp
puts"open"
target=open(file,'w')
puts"truncate"
target.truncate(0)
print 'stmt1'
stmt1=$stdin.gets.chomp
target.write(stmt1)
puts"close"
target.close
puts"-----------------exercise 17------------"

from,to=ARGV
in_file=open(from)
indata=in_file.read
puts "len #{indata.length}"
puts "output#{File.exist?(to)}"
puts "press ctrl-C or RETURN"
$stdin.gets.chomp
ou=open(to,'w')
ou.write(indata)
puts"all done"
ou.close
in_file.close
puts"-----------------exercise 18------------"

def print_two(*args)
  arg1,arg2=args
  puts "#{arg1},#{arg2}"
end

print_two("yoga","priya")

def print_one(arg1,arg2)
        puts "#{arg1},,,#{arg2}"
end

print_one("hiii","hello")

def print_non()
  puts("...........")
end

print_non()
puts"-----------------exercise 19------------"


 def values(one,two)
   puts "#{one}"
   puts "#{two}"
 end
 values(10,20)
 count_one=99
 count_two=66
 values(count_one,count_two)
 values(99+10,66+20)
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
