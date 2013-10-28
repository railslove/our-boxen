require 'spec_helper'

describe 'mumble' do
  it do
    should contain_package('Mumble').with({
      :provider => 'appdmg',
      :source   => 'http://superb-dca2.dl.sourceforge.net/project/mumble/Mumble/1.2.4/Mumble-1.2.4.dmg'
    })
  end
end