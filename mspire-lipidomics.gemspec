# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mspire-lipidomics"
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John T. Prince"]
  s.date = "2012-07-10"
  s.description = "does lipidomics"
  s.email = "jtprince@gmail.com"
  s.executables = ["lipidomic-search.rb"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/lipidomic-search.rb",
    "lib/mspire/lipid.rb",
    "lib/mspire/lipid/ion.rb",
    "lib/mspire/lipid/ion/fragment.rb",
    "lib/mspire/lipid/modification.rb",
    "lib/mspire/lipid/search.rb",
    "lib/mspire/lipid/search/bin.rb",
    "lib/mspire/lipid/search/db_isobar_group.rb",
    "lib/mspire/lipid/search/hit.rb",
    "lib/mspire/lipid/search/probability_distribution.rb",
    "lib/mspire/lipid/search/query.rb",
    "lib/mspire/lipid_maps.rb",
    "mspire-lipidomics.gemspec",
    "scratch/OBConversion_methods.txt",
    "scratch/atom_methods.txt",
    "scratch/bond_methods.txt",
    "scratch/mol_methods.txt",
    "scratch/split_molecules.rb",
    "script/find_nearest_lipid.rb",
    "spec/mspire/lipid/ion_spec.rb",
    "spec/mspire/lipid/modification_spec.rb",
    "spec/mspire/lipid/search_spec.rb",
    "spec/mspire/lipid_maps_spec.rb",
    "spec/mspire/lipid_spec.rb",
    "spec/spec_helper.rb",
    "spec/testfiles/lipidmaps_download.tsv",
    "spec/testfiles/lipidmaps_programmatic_short.tsv",
    "spec/testfiles/lipidmaps_sd_download.tsv"
  ]
  s.homepage = "http://github.com/princelab/mspire-lipidomics"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "mass spectrometry based lipidomics - especially shotgun lipidomics"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mspire>, ["~> 0.7.17"])
      s.add_development_dependency(%q<rubabel>, [">= 0.1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<mspire>, ["~> 0.7.17"])
      s.add_dependency(%q<rubabel>, [">= 0.1.0"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<mspire>, ["~> 0.7.17"])
    s.add_dependency(%q<rubabel>, [">= 0.1.0"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

