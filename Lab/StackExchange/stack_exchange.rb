require 'open-uri'
require 'nokogiri'
require 'json'
require 'csv'
require_relative '../save_to_txt.rb'
require_relative '../create_questions.rb'

class Stack_Exchange
  url = 'https://stackexchange.com/'
  html = URI.open(url)
  create = Create.new
  products = create.create_questions(html)
  save = Save.new
  save.save_to_txt(File.join(File.dirname(__FILE__), "stack_exchange.txt"), products)
end
