require 'spec_helper'

RSpec.describe ShakespeareAnalizer do

  describe '#get_response' do
    context 'expect return the lines spoken by each character in the play.' do
      subject { instance_class.get_response }

      let!(:instance_class) { described_class.new }

      before do
        subject
      end

      it { expect(subject['First Witch']).to eq 62 }
      it { expect(subject['Second Witch']).to eq 27 }
      it { expect(subject['ALL']).to eq 0 }
      it { expect(subject['DUNCAN']).to eq 70 }
      it { expect(subject['MALCOLM']).to eq 212 }
      it { expect(subject['Sergeant']).to eq 35 }
      it { expect(subject['LENNOX']).to eq 73 }
      it { expect(subject['ROSS']).to eq 135 }
      it { expect(subject['MACBETH']).to eq 718 }
      it { expect(subject['BANQUO']).to eq 113 }
      it { expect(subject['ANGUS']).to eq 21 }
      it { expect(subject['LADY MACBETH']).to eq 265 }
      it { expect(subject['Messenger']).to eq 23 }
      it { expect(subject['FLEANCE']).to eq 2 }
      it { expect(subject['Porter']).to eq 46 }
      it { expect(subject['MACDUFF']).to eq 180 }
      it { expect(subject['MACBETHLENNOX']).to eq 1 }
      it { expect(subject['DONALBAIN']).to eq 10 }
      it { expect(subject['Old Man']).to eq 11 }
      it { expect(subject['ATTENDANT']).to eq 1 }
      it { expect(subject['First Murderer']).to eq 30 }
      it { expect(subject['Second Murderer']).to eq 15 }
      it { expect(subject['Both Murderers']).to eq 2 }
      it { expect(subject['Servant']).to eq 5 }
      it { expect(subject['Third Murderer']).to eq 8 }
      it { expect(subject['Lords']).to eq 3 }
      it { expect(subject['HECATE']).to eq 39 }
      it { expect(subject['Lord']).to eq 21 }
      it { expect(subject['First Apparition']).to eq 2 }
      it { expect(subject['Second Apparition']).to eq 4 }
      it { expect(subject['Third Apparition']).to eq 5 }
      it { expect(subject['LADY MACDUFF']).to eq 41 }
      it { expect(subject['Son']).to eq 20 }
      it { expect(subject['Doctor']).to eq 45 }
      it { expect(subject['Gentlewoman']).to eq 23 }
      it { expect(subject['MENTEITH']).to eq 12 }
      it { expect(subject['CAITHNESS']).to eq 11 }
      it { expect(subject['SEYTON']).to eq 5 }
      it { expect(subject['SIWARD']).to eq 30 }
      it { expect(subject['Soldiers']).to eq 1 }
      it { expect(subject['YOUNG SIWARD']).to eq 7 }
      it { expect(subject).not_to be_nil }
      it { expect(subject).not_to have_key('ALL') }
    end
  end
end
