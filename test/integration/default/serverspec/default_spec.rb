require 'serverspec'
require_relative './spec_helper'

# Required by serverspec
set :backend, :exec

describe file("#{ENV['QUALIMAP_DIR']}/qualimap") do
  it { should be_file }
  it { should be_executable.by('owner') }
  it { should be_executable.by('group') }
  it { should be_executable.by('others') }
end

describe command('which qualimap') do
  its(:exit_status) { should eq 0 }
end

# The version in the help text is different: v.2.n.n rather than v2.n.n as it is elsewhere
version_help = ENV['QUALIMAP_VERSION'].gsub(/v/, 'v.')

describe command('qualimap -version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should contain(version_help) }
end
