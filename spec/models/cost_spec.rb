require 'rails_helper'

describe Cost do
it {should validate_presence_of :valor}
it {should validate_presence_of :cover}
it { should belong_to :travel}
it { should belong_to :tipo}
it {should validate_numericality_of :valor}
end