class HomeController < ApplicationController

  def index
    require 'net/http'
    require 'json'

    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    # @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/info'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    # looping through received data
    @my_coins = ['BTC', 'XRP', 'ADA', 'XLM', 'STEEM', ]
  end

  def about
  end

  def lookup
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coin = JSON.parse(@response)

    @symbol = params[:sym]
    if @symbol
      @symbol = @symbol.upcase
    end

    if @symbol == ''
      @symbol = 'Please Enter A Currency'
    end

    @counter = 0

  end

  def list
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_list = JSON.parse(@response)

  end

end
