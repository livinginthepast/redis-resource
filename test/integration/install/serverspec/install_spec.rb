require 'spec_helper'

RSpec.describe 'install' do
  describe user('redis') do
    it { should exist }
  end

  describe group('redis') do
    it { should exist }
  end

  describe file('/etc/redis') do
    it { should be_directory }
    it { should be_owned_by('redis') }
    it { should be_mode(0755) }
  end
end
