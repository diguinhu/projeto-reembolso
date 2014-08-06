require 'rails_helper'

describe Travel do
	it {should validate_presence_of :destino}
	it { should belong_to :user}
end