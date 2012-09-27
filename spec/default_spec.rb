require File.expand_path('../helpers', __FILE__)

describe ChefRun.new('atlassian::fisheye') do
  
  context "on ubuntu 12.04" do
    before(:all) { mock_and_converge('ubuntu', 12.04) }
    
   	it "should extract fisheye to /opt/atlassian/fisheye" do
   		pending "can not test this with ark LWRP"
   	end
  end


  def mock_and_converge(platform, version = 0)
    mock_ohai(platform: platform, platform_version: version)
    subject.converge
  end
end
