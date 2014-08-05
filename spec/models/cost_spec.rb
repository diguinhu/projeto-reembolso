require 'rails_helper'

describe Cost do
it {should validate_presence_of :valor}
it {should validate_presence_of :cover}
end