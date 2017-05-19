name = ['bob', 'joe', 'steve', nil, false, 8,  'frank']

name.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
    puts "#{name}"
  end
end

begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end

