require 'rails_helper'

describe Tipo do
	it {should validate_presence_of :description}
	it {should validate_uniqueness_of :description}
end