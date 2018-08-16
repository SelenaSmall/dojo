require 'rspec'
require 'tennis'

describe Tennis do
  let(:tennis) { Tennis.new }

  it 'should start a game with love all' do
    expect(tennis.score).to eq 'love all'
  end

  it 'should set the score to 15 love when server scores the first point' do
    1.times { tennis.point_to(:server) }
    expect(tennis.score).to eq '15 love'
  end

  it 'should set the score to 30 love when server scores the first point and second point' do
    2.times { tennis.point_to(:server) }
    expect(tennis.score).to eq '30 love'
  end

  it 'should set the score to 40 love when server scores three points in a row' do
    3.times { tennis.point_to(:server) }
    expect(tennis.score).to eq '40 love'
  end
end