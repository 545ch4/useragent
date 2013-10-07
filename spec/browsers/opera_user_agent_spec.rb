require 'user_agent'

shared_examples_for "Opera browser" do
  it "should return 'Opera' as its browser" do
    @useragent.browser.should == "Opera"
  end
end

# http://www.useragentstring.com/Opera12.14_id_19612.php
describe "UserAgent: 'Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14'" do
  before do
    @useragent = UserAgent.parse("Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14")
  end

  it_should_behave_like "Opera browser"

  it "should return '12.14' as its version" do
    @useragent.version.should == "12.14"
  end

  it "should return 'Windows' as its platform" do
    @useragent.platform.should == "Windows"
  end

  it "should return 'Windows Vista' as its os" do
    @useragent.os.should == "Windows Vista"
  end
end

describe "UserAgent: 'Opera/9.27 (Macintosh; Intel Mac OS X; U; en)'" do
  before do
    @useragent = UserAgent.parse("Opera/9.27 (Macintosh; Intel Mac OS X; U; en)")
  end

  it_should_behave_like "Opera browser"

  it "should return '9.27' as its version" do
    @useragent.version.should == "9.27"
  end

  it "should return 'Macintosh' as its platform" do
    @useragent.platform.should == "Macintosh"
  end

  it "should return 'Intel Mac OS X' as its os" do
    @useragent.os.should == "Intel Mac OS X"
  end

  it "should return 'en' as its localization" do
    @useragent.localization.should == "en"
  end
end

describe "UserAgent: 'Opera/9.27 (Windows NT 5.1; U; en)'" do
  before do
    @useragent = UserAgent.parse("Opera/9.27 (Windows NT 5.1; U; en)")
  end

  it_should_behave_like "Opera browser"

  it "should return '9.27' as its version" do
    @useragent.version.should == "9.27"
  end

  it "should return 'Windows' as its platform" do
    @useragent.platform.should == "Windows"
  end

  it "should return 'Windows XP' as its os" do
    @useragent.os.should == "Windows XP"
  end

  it "should return 'en' as its localization" do
    @useragent.localization.should == "en"
  end
end

describe "UserAgent: 'Opera/9.80'" do
  before do
    @useragent = UserAgent.parse("Opera/9.80")
  end

  it_should_behave_like "Opera browser"

  it "should return '9.80' as its version" do
    @useragent.version.should == "9.80"
  end

  it "should return nil as its platform" do
    @useragent.platform.should be_nil
  end

  it "should return nil as its os" do
    @useragent.os.should be_nil
  end

  it "should return nil as its localization" do
    @useragent.localization.should be_nil
  end
end

describe "UserAgent: 'Opera/9.80 (Macintosh; Intel Mac OS X; U; en) Presto/2.2.15 Version/10.10'" do
  before do
    @useragent = UserAgent.parse("Opera/9.80 (Macintosh; Intel Mac OS X; U; en) Presto/2.2.15 Version/10.10")
  end

  it_should_behave_like "Opera browser"

  it "should return '10.10' as its version" do
    @useragent.version.should == "10.10"
  end

  it "should return 'Macintosh' as its platform" do
    @useragent.platform.should == "Macintosh"
  end

  it "should return 'Intel Mac OS X' as its os" do
    @useragent.os.should == "Intel Mac OS X"
  end

  it "should return 'en' as its localization" do
    @useragent.localization.should == "en"
  end
end

describe "UserAgent: 'Opera/9.80 (Windows NT 6.0; U; en) Presto/2.2.15 Version/10.10'" do
  before do
    @useragent = UserAgent.parse("Opera/9.80 (Windows NT 6.0; U; en) Presto/2.2.15 Version/10.10")
  end

  it_should_behave_like "Opera browser"

  it "should return '10.10' as its version" do
    @useragent.version.should == "10.10"
  end

  it "should return 'Windows' as its platform" do
    @useragent.platform.should == "Windows"
  end

  it "should return 'Windows Vista' as its os" do
    @useragent.os.should == "Windows Vista"
  end

  it "should return 'en' as its localization" do
    @useragent.localization.should == "en"
  end
end

describe "UserAgent: 'Opera/9.80 (J2ME/MIDP; Opera Mini/9 (Compatible; MSIE:9.0; iPhone; BlackBerry9700; AppleWebKit/24.746; U; en) Presto/2.5.25 Version/10.54'" do
  before do
    @useragent = UserAgent.parse("Opera/9.80 (J2ME/MIDP; Opera Mini/9 (Compatible; MSIE:9.0; iPhone; BlackBerry9700; AppleWebKit/24.746; U; en) Presto/2.5.25 Version/10.54'")
  end

  it_should_behave_like "Opera browser"

  it { @useragent.should be_mobile }
end

describe "UserAgent: 'Opera/9.80 (J2ME/MIDP; Opera Mini/9.80 (J2ME/23.377; U; en) Presto/2.5.25 Version/10.54'" do
  before do
    @useragent = UserAgent.parse("Opera/9.80 (J2ME/MIDP; Opera Mini/9.80 (J2ME/23.377; U; en) Presto/2.5.25 Version/10.54")
  end

  it_should_behave_like "Opera browser"

  it { @useragent.should be_mobile }
end

# http://www.useragentstring.com/Opera%20Mini9.80_id_17936.php
describe "UserAgent: 'Opera/9.80 (J2ME/MIDP; Opera Mini/9.80 (S60; SymbOS; Opera Mobi/23.348; U; en) Presto/2.5.25 Version/10.54'" do
  before do
    @useragent = UserAgent.parse("Opera/9.80 (J2ME/MIDP; Opera Mini/9.80 (S60; SymbOS; Opera Mobi/23.348; U; en) Presto/2.5.25 Version/10.54")
  end

  it_should_behave_like "Opera browser"

  it "should return '9.80' as its version" do
    @useragent.version.should == "9.80"
  end
end

# http://www.useragentstring.com/Opera%20Mini7.1.32694_id_19147.php
describe "UserAgent: 'Opera/9.80 (iPhone; Opera Mini/7.1.32694/27.1407; U; en) Presto/2.8.119 Version/11.10'" do
  before do
    @useragent = UserAgent.parse("Opera/9.80 (iPhone; Opera Mini/7.1.32694/27.1407; U; en) Presto/2.8.119 Version/11.10")
  end

  it_should_behave_like "Opera browser"

  it "should return '7.1.32694' as its version" do
    @useragent.version.should == "7.1.32694"
  end
end
