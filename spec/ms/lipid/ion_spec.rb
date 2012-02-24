require 'spec_helper'


require 'ms/lipid'
require 'ms/lipid/modification'
require 'ms/lipid/ion'

describe MS::Lipid::Ion do
  before do
    lipid = MS::Lipid.new
    lipid.mass = 300.2
    proton = MS::Lipid::Modification.new(:proton)
    h2o_loss = MS::Lipid::Modification.new(:water, :loss => true)
    @plus1 = MS::Lipid::Ion.new(lipid, [proton, h2o_loss])
    @plus2 = MS::Lipid::Ion.new(lipid, [proton, proton, h2o_loss])
  end

  it 'calculates the correct m/z' do
    @plus1.mz.should be_within(1e5).of(283.196711735)
    @plus2.mz.should be_within(1e5).of(142.101994085)
  end

end