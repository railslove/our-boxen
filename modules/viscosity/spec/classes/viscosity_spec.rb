require 'spec_helper'

describe 'viscosity' do
  it do
    should contain_package('Viscosity').with({
      :provider => 'appdmg',
      :source   => 'http://www.thesparklabs.com/downloads/Viscosity.dmg'
    })
  end
end
