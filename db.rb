require 'rubygems'
require 'mysql'
require 'sinatra'

@@mysqlclient = Mysql.new("localhost", "user", "kunwar", "sinatra")

get '/' do
"Hello world, it's #{Time.now} at the server!"
end

get '/tables/' do
res = Array.new
result = @@mysqlclient.query("SELECT * FROM tables",:as => :array)
result.each do | row | 
res.push(row)
end
return res.to_s
end