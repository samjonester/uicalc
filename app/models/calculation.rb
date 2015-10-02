class Calculation
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :initial_value, :addition_value

  validates :initial_value, :presence => true
  validates :addition_value, :presence => true

  def initialize(h = {})
    h = {} if h.nil?
    self.initial_value = h[:initial_value].to_i || 0
    self.addition_value = h[:addition_value] || ''
  end

  def persisted?
    false
  end
end
