# rubocop:disable BlockLength
require_relative '../lib/equine.rb'

describe 'Equine' do
  subject(:equine) { Equine.new }

  it 'is an equine' do
    expect(subject).to be_a(Equine)
  end

  it 'has an eat_grass method' do
    expect { subject.eat_grass }.not_to raise_error
  end
end

describe 'Horse' do
  subject(:horse) { Horse.new }

  it 'is a horse' do
    expect(subject).to be_a(Horse)
  end

  it 'has an eat_grass method' do
    expect { subject.eat_grass }.not_to raise_error
  end

  it 'can be ridden' do
    expect { subject.ride }.not_to raise_error
  end
end

describe 'Mule' do
  subject(:mule) { Mule.new }

  it 'is a mule' do
    expect(subject).to be_a(Mule)
  end

  it 'has an eat_grass method' do
    expect { subject.eat_grass }.not_to raise_error
  end

  it 'can be ridden' do
    expect { subject.ride }.not_to raise_error
  end
end

describe 'Zebra' do
  subject(:zebra) { Zebra.new }

  it 'is a zebra' do
    expect(subject).to be_a(Zebra)
  end

  it 'has an eat_grass method' do
    expect { subject.eat_grass }.not_to raise_error
  end

  it 'cannot be ridden' do
    expect { subject.ride }.to raise_error(NoMethodError)
  end
end
