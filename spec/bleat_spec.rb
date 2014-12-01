require 'spec_helper'

describe Bleat do

context 'RSpec Demo'

  it 'should create then remove an entry from the database' do
    expect(Bleat.count).to eq(0)
    Bleat.create(content: 'bah bahh')
    expect(Bleat.count).to eq(1)
    bleat = Bleat.first
    expect(bleat.content). to eq('bah bahh')
    bleat.destroy
    expect(Bleat.count).to eq(0)
  end

end