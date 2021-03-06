require 'user_agent'

shared_examples_for "Internet Explorer browser" do
  it "should return 'Internet Explorer' as its browser" do
    expect(@useragent.browser).to eq("Internet Explorer")
  end

  it "should return 'Windows' as its platform" do
    expect(@useragent.platform).to eq("Windows")
  end
end

describe "UserAgent: Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '11.0' as its version" do
    expect(@useragent.version).to eq("11.0")
  end

  it "should return 'Windows 7' as its os" do
    expect(@useragent.os).to eq("Windows 7")
  end

  it "should have a higher version number than IE10" do
    expect(@useragent.version).to be >
      UserAgent.parse("Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)").version
  end

  it "should have a higher version number than '10.0'" do
    expect(@useragent.version).to be > '10.0'
  end

  it "should have a higher or equal version number than '10.0'" do
    expect(@useragent.version).to be >= '10.0'
  end

  it "should have a smaller version number than '12.0'" do
    expect(@useragent.version).to be < '12.0'
  end
  it "should have a smaller or equal version number than '10.0'" do
    expect(@useragent.version).to be <= '11.0'
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '11.0' as its version" do
    expect(@useragent.version).to eq("11.0")
  end

  it "should return 'Windows 8.1' as its os" do
    expect(@useragent.os).to eq("Windows 8.1")
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '11.0' as its version" do
    expect(@useragent.version).to eq("11.0")
  end

  it "should return 'Windows 7' as its os" do
    expect(@useragent.os).to eq("Windows 7")
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: Mozilla/5.0 (IE 11.0; Windows NT 6.3; Trident/7.0; .NET4.0E; .NET4.0C; rv:11.0) like Gecko" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (IE 11.0; Windows NT 6.3; Trident/7.0; .NET4.0E; .NET4.0C; rv:11.0) like Gecko")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '11.0' as its version" do
    expect(@useragent.version).to eq("11.0")
  end

  it "should return 'Windows 8.1' as its os" do
    expect(@useragent.os).to eq("Windows 8.1")
  end

  it "should have a higher version number than IE10" do
    expect(@useragent.version).to be >
      UserAgent.parse("Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)").version
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '11.0' as its version" do
    expect(@useragent.version).to eq("11.0")
  end

  it "should return 'Windows 8.1' as its os" do
    expect(@useragent.os).to eq("Windows 8.1")
  end

  it "should have a higher version number than IE10" do
    expect(@useragent.version).to be >
      UserAgent.parse("Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)").version
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '11.0' as its version", :focus => true do
    expect(@useragent.version).to eq("11.0")
  end

  it "should return 'Windows 8.1' as its os" do
    expect(@useragent.os).to eq("Windows 8.1")
  end

  it "should have a higher version number than IE10" do
    expect(@useragent.version).to be >
      UserAgent.parse('Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)').version
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '10.0' as its version" do
    expect(@useragent.version).to eq("10.0")
  end

  it "should return 'Windows 8' as its os" do
    expect(@useragent.os).to eq("Windows 8")
  end

  it "should have a higher version number than IE9" do
    expect(@useragent.version).to be >
      UserAgent.parse('Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.2; ARM; Trident/6.0; Touch; .NET4.0E; .NET4.0C; Tablet PC 2.0)').version
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.2; ARM; Trident/6.0; Touch; .NET4.0E; .NET4.0C; Tablet PC 2.0)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.2; ARM; Trident/6.0; Touch; .NET4.0E; .NET4.0C; Tablet PC 2.0)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '7.0' as its version" do
    expect(@useragent.version).to eq("7.0")
  end

  it "should return 'Windows 8' as its os" do
    expect(@useragent.os).to eq("Windows 8")
  end

  it { expect(@useragent.compatibility_view?).to eq(true) }

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; ARM; Trident/6.0; Touch)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; ARM; Trident/6.0; Touch)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '10.0' as its version" do
    expect(@useragent.version).to eq("10.0")
  end

  it "should return 'Windows 8' as its os" do
    expect(@useragent.os).to eq("Windows 8")
  end

  it { expect(@useragent.compatibility_view?).to eq(false) }

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '9.0' as its version" do
    expect(@useragent.version).to eq("9.0")
  end

  it "should return 'Windows 7' as its os" do
    expect(@useragent.os).to eq("Windows 7")
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '9.0' as its version" do
    expect(@useragent.version).to eq("9.0")
  end

  it "should return 'Windows 7' as its os" do
    expect(@useragent.os).to eq("Windows 7")
  end

  it { expect(@useragent.compatibility_view?).to eq(false) }

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C)' Compat View" do
  before do
    @useragent = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '7.0' as its version" do
    expect(@useragent.version).to eq("7.0")
  end

  it "should return 'Windows 7' as its os" do
    expect(@useragent.os).to eq("Windows 7")
  end

  it { expect(@useragent.compatibility_view?).to eq(true) }

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
  it { expect(@useragent.mobile?).to eq(false) }
end

describe "UserAgent: 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '7.0' as its version" do
    expect(@useragent.version).to eq("7.0")
  end

  it "should return 'Windows Vista' as its os" do
    expect(@useragent.os).to eq("Windows Vista")
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '6.0' as its version" do
    expect(@useragent.version).to eq("6.0")
  end

  it "should not have a higher version than '10.0'" do
    expect(@useragent.version).not_to be >= '10.0'
  end

  it "should return 'Windows XP' as its os" do
    expect(@useragent.os).to eq("Windows XP")
  end

  it "should be == 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'" do
    expect(@useragent).to eq(@useragent)
  end

  it "should not be == 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)'" do
    expect(@useragent).not_to eq(UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)"))
  end

  it "should be > 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)'" do
    expect(@useragent).to be > UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)")
  end

  it "should not be < 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)'" do
    expect(@useragent).not_to be < UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)")
  end

  it "should be >= 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)'" do
    expect(@useragent).to be >= UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)")
  end

  it "should not be >= 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)'" do
    expect(@useragent).not_to be >= UserAgent.parse("Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)")
  end

  it "should be <= 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)'" do
    expect(@useragent).to be <= UserAgent.parse("Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)")
  end

  it "should not be <= 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)'" do
    expect(@useragent).not_to be <= UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)")
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '5.5' as its version" do
    expect(@useragent.version).to eq("5.5")
  end

  it "should return 'Windows XP' as its os" do
    expect(@useragent.os).to eq("Windows XP")
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/4.0 (compatible; MSIE 7.0; Windows Phone OS 7.0; Trident/3.1; IEMobile/7.0; SAMSUNG; SGH-i917)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 7.0; Windows Phone OS 7.0; Trident/3.1; IEMobile/7.0; SAMSUNG; SGH-i917)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '7.0' as its version" do
    expect(@useragent.version).to eq("7.0")
  end

  it "should return 'Windows Phone OS 7.0' as its os" do
    expect(@useragent.os).to eq("Windows Phone OS 7.0")
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should be a mobile browser" do
    expect(@useragent.mobile?).to eq(true)
  end
end

describe "UserAgent: 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; NOKIA; Lumia 625; Vodafone)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; NOKIA; Lumia 625; Vodafone)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return '10.0' as its version" do
    expect(@useragent.version).to eq("10.0")
  end

  it "should return 'Windows Phone 8.0' as its os" do
    expect(@useragent.os).to eq("Windows Phone 8.0")
  end

  it "should be a mobile browser" do
    expect(@useragent.mobile?).to eq(true)
  end
end

describe "Non-Chrome Frame browsers" do
  before do
    @useragent = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "shouldn't pose as chromeframe" do
    expect(@useragent.chromeframe).to be_nil
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "Chrome Frame installs before version 4.0" do
  before do
    @useragent = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; chromeframe)")
  end

  it_should_behave_like "Internet Explorer browser"

  it "should return true as chromeframe" do
    expect(@useragent.chromeframe).to be_truthy
  end

  it "shouldn't have a version" do
    expect(@useragent.chromeframe).not_to respond_to(:version)
  end

  it "should not be a bot" do
    expect(@useragent.bot?).not_to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "Chrome Frame from version 4.0 on" do
  context "as separate product" do
    before do
      @useragent = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) chromeframe/4.0")
    end

    it_should_behave_like "Internet Explorer browser"

    it "should return true as chromeframe" do
      expect(@useragent.chromeframe).to be_truthy
    end

    it "should have a version" do
      expect(@useragent.chromeframe.version).to eq("4.0")
    end
  end

  context "as versioned comment" do
    before do
      @useragent = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; chromeframe/4.0)")
    end

    it_should_behave_like "Internet Explorer browser"

    it "should return true as chromeframe" do
      expect(@useragent.chromeframe).to be_truthy
    end

    it "should have a version" do
      expect(@useragent.chromeframe.version).to eq("4.0")
    end
  end
end
