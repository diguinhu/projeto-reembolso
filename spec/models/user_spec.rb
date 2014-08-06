require 'rails_helper'

RSpec.describe User do
it {should validate_presence_of :name}
  it {should ensure_length_of :name}
  it {should validate_presence_of :email}
  it {should validate_numericality_of :password}
end