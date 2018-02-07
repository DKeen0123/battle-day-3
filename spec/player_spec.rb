require 'player'

describe Player do
  it 'returns a name' do
    expect(subject('Simon').name).to eq 'Simon'
  end
end
