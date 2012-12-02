require 'casino_core/model'

class CASinoCore::Model::TicketGrantingTicket < ActiveRecord::Base
  attr_accessible :ticket, :username, :user_agent, :extra_attributes
  serialize :extra_attributes, Hash
  validates :ticket, uniqueness: true
  has_many :service_tickets
  has_many :proxy_granting_tickets
end
