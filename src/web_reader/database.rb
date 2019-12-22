require 'mysql2'

# a class to fetch and insert data into mysql
# Author:: Dustin Wickert

class DatabaseHandler

  protected

  attr_reader :results

  def initialize(host, username, password, database)
    @client = Mysql2::Client.new(:host => host, :username => username, :password => password, :database => database)
    @results = nil
  end

  public

  # Method to fetch specific data from a table
  # Parameters: row(STRING), data_mass(STRING), where_option(STRING(=> group='githubbers' ))
  def fetch_data(row, data_mass='*')
    @results = @client.query("SELECT #{data_mass} FROM #{row}")
    return true
  end

  # Method to print out data, stored in the result attribute
  def print_data
    if @results.equal?(nil)
      raise(StandardError, 'Before you can call print data, you have to use the fetch_data method')
    end
    @results.each do |row|
      puts row
    end
  end

end