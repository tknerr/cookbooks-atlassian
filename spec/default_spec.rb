require File.expand_path('../helpers', __FILE__)

describe ChefRun.new('atlassian::crucible') do
  
  context "on ubuntu 12.04" do
    before(:all) { mock_and_converge('ubuntu', 12.04) }
    
   	it "should download fisheye to /tmp" do
   		subject.should create_remote_file("/tmp/fisheye-2.8.1.zip")
   	end

   	



  end


  def mock_and_converge(platform, version = 0)
    mock_ohai(platform: platform, platform_version: version)
    subject.converge
  end
end
