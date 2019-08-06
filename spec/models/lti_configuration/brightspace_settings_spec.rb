# frozen_string_literal: true

require "rails_helper"

RSpec.describe LtiConfiguration::BrightspaceSettings do
  let(:launch_message) { IMS::LTI::Models::Messages::BasicLTILaunchRequest.new }
  let(:settings) { described_class.new(launch_message) }
  let(:general)  { LtiConfiguration::GenericSettings.new(launch_message) }

  it "platform_name should be 'Brightspace'" do
    expect(settings.platform_name).to eql("Brightspace")
  end

  it "context_memberships_url_key should be inherited" do
    expect(settings.context_memberships_url_key).to eql(general.context_memberships_url_key)
  end
end
