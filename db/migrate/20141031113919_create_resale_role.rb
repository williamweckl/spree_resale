class CreateResaleRole < ActiveRecord::Migration
  def self.up
    Spree::Role.find_or_create_by(:name => 'resale')
  end

  def self.down
    Spree::Role.find_by(:name => 'resale').delete
  end
end