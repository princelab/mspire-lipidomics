require 'spec_helper'

require 'mspire/molecule'

describe Mspire::Molecule do

  describe 'creating from lipidmaps sdf string' do

    before(:all) do
      @string = "LMFA01010012|  LIPDMAPS01251212252D|| 14 13  0  0  0  0  0  0  0  0999 V2000|    6.4289    5.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|    7.8578    5.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|    7.1433    5.4125    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|    8.5723    5.4125    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|    9.2868    5.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|   10.0013    5.4125    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|   10.7158    5.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|   11.4302    5.4125    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|   12.1448    5.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|   12.8592    5.4125    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|   13.5737    5.0000    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0|   12.8592    6.2375    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0|    5.7144    5.4125    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|    5.0000    5.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0|  2  3  1  0  0  0  0|  3  1  1  0  0  0  0|  4  2  1  0  0  0  0|  5  4  1  0  0  0  0|  6  5  1  0  0  0  0|  7  6  1  0  0  0  0|  8  7  1  0  0  0  0|  9  8  1  0  0  0  0| 10  9  1  0  0  0  0| 11 10  1  0  0  0  0| 10 12  2  0  0  0  0| 13  1  1  0  0  0  0| 14 13  1  0  0  0  0|M  END"
    end

    it 'can be read in' do
      mol = Mspire::Molecule.from_lipidmaps_sdf_string(@string)
      mol.to_s.should == 'CCCCCCCCCCCC(=O)O'
    end

    describe 'basic abilities' do
      subject { Mspire::Molecule.from_lipidmaps_sdf_string(@string) }

      it 'can produce canonical SMILES output' do
        subject.to_s.should == 'CCCCCCCCCCCC(=O)O'
        subject.write_string.should == "CCCCCCCCCCCC(=O)O\tLMFA01010012\n"
      end

      it 'can create a molecular formula' do
        mf = subject.molecular_formula
        mf.to_hash.should == {:c => 12, :h => 24, :o => 2 }
        mf.charge.should == 0
      end

      it 'knows its mass' do
        subject.mass.should be_within(0.00000001).of(200.177630008)
      end

      it 'has a charge' do
        subject.charge.should == 0
      end

      it 'each gives an enumerator for each atom' do
        subject.each do |atom|
          atom.class.should == OpenBabel::OBAtom
        end
        classes = subject.map do |atom|
          atom.class
        end
        classes.size.should == 14
        classes.uniq.should == OpenBabel::OBAtom
      end

    end

    describe 'fragmenting molecules' do
      describe 'fragmenting a simple ketone' do
        subject { Mspire::Molecule.new.read_string("CC(=O)CCCC") }
        it 'creates the four fragments' do
          # fragment the first level
          p subject.fragment(1)
        end
      end
    end
  end

end
