require 'rspec'
require_relative 'bowling'

describe "Bowling game logic" do
    before do
        @game = Bowling.new
    end
    
    # smoke test first - does the thing turn on?
    # it('can make a new game') do
    #     game = Bowling.new
    # end
    # this initially gave the error Uninitialized Constant Bowling.  Created empty Bowling class.
    # also commenting out - will create a before action with this info.
    
    
    # test2 is to check for the most basic game - gutter
    it('can roll gutter game') do
        20.times{@game.roll(0)}
        expect(@game.score).to eq(0)
    end
    # NoMethodError: undefined method `roll. created roll method w/ arg of pins, and score method with 0 in body.
    
    
    it ('can roll all ones') do
        20.times{@game.roll(1)}
        expect(@game.score).to eq(20)
    end
    
    it('can roll a spare') do
        @game.roll(5)
        @game.roll(5)
        @game.roll(3)
        17.times{@game.roll(0)}
        expect(@game.score).to eq(16)
    end
    
    it('can roll a strike') do
        @game.roll(10)
        @game.roll(3)
        @game.roll(4)
        16.times{@game.roll(0)}
        expect(@game.score).to eq(24)
    end
    
    it('can roll a perfect game') do
        12.times{@game.roll(10)}
        expect(@game.score).to eq(300)
    end
    
    
end