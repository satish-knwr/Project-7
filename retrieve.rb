require 'rubygems'
require 'mysql'
require 'sinatra'
# require 'pry'
get '/' do
  number = Array.new
  # binding.pry
  @mysqlclient = Mysql.new("localhost", "user", "kunwar", "sinatra")
  result = @mysqlclient.query("SELECT * FROM Detail")
   n_rows = result.num_rows
   # result.each do |row|
   #    number.push(row)
   #  end
   result.num_rows.times do
    number << result.fetch_hash
   # "#{params[:number]}"
   end

end