cask 'chalk' do
  version '1.5.2'
  sha256 'f8a58291ce8e3cd3a8fd6b6570ccd571070338296cd68823506ea93df3079b4a'

  url "https://www.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/chalk/downloads/chalk-sparkle-en.rss'
  name 'Chalk'
  homepage 'https://www.chachatelier.fr/chalk/'

  auto_updates true

  app 'Chalk.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.chachatelier.pierre.chalk.sfl*',
               '~/Library/Autosave Information/Calculator.chalk',
               '~/Library/Caches/fr.chachatelier.pierre.Chalk',
               '~/Library/Cookies/fr.chachatelier.pierre.Chalk.binarycookies',
               '~/Library/Preferences/fr.chachatelier.pierre.Chalk.plist',
             ]
end
