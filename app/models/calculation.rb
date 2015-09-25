class Calculation

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :initial_value, :addition_value

  validates :initial_value, presence: true
  validates :addition_value, presence: true
end
