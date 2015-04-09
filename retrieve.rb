require 'rubygems'
require 'mysql'
require 'sinatra'

@@mysqlclient = Mysql.new("localhost", "user", "kunwar", "sinatra")

post '/' do
  
  rs = @@mysqlclient.query("SELECT * FROM Writers")
  n_rows = rs.num_rows
    
  # "There are #{params[:n_rows]} rows in the result set"
    
  n_rows.times do
    rs.fetch_row.join("\s")
    # rs
  end
end

#  '/form' do
#   "You said '#{params[:message]}'"
# end