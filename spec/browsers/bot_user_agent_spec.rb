describe "UserAgent: 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Twitterbot/1.0'" do
  before do
    @useragent = UserAgent.parse("Twitterbot/1.0")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'YandexBot/3.0'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Exabot/3.0'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; Exabot/3.0; +http://www.exabot.com/go/robot)")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'DotBot/1.1'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'SeznamBot/3.2'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (compatible; SeznamBot/3.2; +http://fulltext.sblog.cz/)")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "UserAgent: 'Googlebot-Image/1.0'" do
  before do
    @useragent = UserAgent.parse("Googlebot-Image/1.0")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end
end

describe "Google Web Preview Analytics" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview Analytics) Chrome/27.0.1453 Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should not be mobile browser" do
    expect(@useragent.mobile?).not_to eq(true)
  end

  it "should not behave like a Chrome browser" do
    expect(@useragent.browser).to eq("Chrome")
  end

  it "should return '27.0.1453' as its version" do
    expect(@useragent.version).to eq("27.0.1453")
  end
end

describe "UserAgent: 'Googlebot-Mobile/2.1', device: 'SAMSUNG-SGH-E250/1.0'" do
  before do
    @useragent = UserAgent.parse("SAMSUNG-SGH-E250/1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1 UP.Browser/6.2.3.3.c.1.101 (GUI) MMP/2.0 (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html)")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should be a mobile browser" do
    expect(@useragent.mobile?).to eq(true)
  end
end

describe "UserAgent: 'Googlebot-Mobile/2.1', device: 'DoCoMo/2.0'" do
  before do
    @useragent = UserAgent.parse("DoCoMo/2.0 N905i(c100;TB;W24H16) (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html)")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should be a mobile browser" do
    expect(@useragent.mobile?).to eq(true)
  end
end

describe "UserAgent: 'Googlebot/2.1', device: 'iPhone'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)")
  end

  it "should be a bot" do
    expect(@useragent.bot?).to eq(true)
  end

  it "should be a mobile browser" do
    expect(@useragent.mobile?).to eq(true)
  end

  it "should not behave like a Safari browser" do
    expect(@useragent.browser).to eq("Safari")
  end

  it "should return '536.26' as its webkit version" do
    expect(@useragent.webkit.version).to eq("536.26")
  end
end
