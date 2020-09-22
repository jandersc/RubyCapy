# begin 

#     file = File.open('./ola.txt')
#     if file
#         puts file.read
#     end

# rescue Exception => e
#     puts e.message
#     puts e.backtrace 
# end

def soma(n1, n2)
    n1 + n2

rescue Exception => e
    puts 'erro ao realizar a soma'

end

soma('10', 5)