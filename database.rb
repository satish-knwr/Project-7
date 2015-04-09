require 'rubygems'
require 'mysql'
require 'sinatra'

@@mysqlclient = Mysql.new("localhost", "user", "kunwar", "sinatra")

get '/' do
  @@mysqlclient.query("CREATE TABLE IF NOT EXISTS \
        Detail(Id INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(25))")
  @@mysqlclient.query("INSERT INTO Detail(Name) VALUES('Satish Kunwar')")
  @@mysqlclient.query("INSERT INTO Detail(Name) VALUES('Dinesh Regmi')")
  @@mysqlclient.query("INSERT INTO Detail(Name) VALUES('Kashish Singh')")
  @@mysqlclient.query("INSERT INTO Detail(Name) VALUES('Aavar Bajimaya')")
  @@mysqlclient.query("INSERT INTO Detail(Name) VALUES('Lokesh Neupane')")   
end