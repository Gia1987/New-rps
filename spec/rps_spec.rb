require'game'

describe Game do

  # never stub the subject!


  describe'#ask_user' do
    it 'asks user to pick up a weapon' do
      #assert
      expect{subject.ask_user}.to output("Welcome :)\nPlease chose a weapon: r/p/s\n").to_stdout
    end
  end

  describe '#input_user' do
    it'user can choice the weapon' do
      #arrange
      allow(subject).to receive(:gets) { 's' }
      #assert
      expect{subject.input_user}.to output("You chose: s\n").to_stdout
    end
  end

  describe '#pc_move' do
    it' define random pc weapon' do
      #arrange
      srand(0)
      #assert
      expect{subject.pc_move}.to output("Computer weapon is : r\n").to_stdout
    end
  end

  describe'#result' do
    it'gives us the result of the battle' do
      #arrange
      srand(0)
      subject.pc_move
      allow(subject).to receive(:gets) { 'p' }
      subject.input_user
      #assert
      expect { subject.result }.to output("Player Won\n").to_stdout
    end
  end
end
