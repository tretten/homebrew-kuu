cask "kuu" do
  version "0.8.13"
  sha256 "9853ccec85a2311b36ab8577f70cdb84a3f0bcd49b2c4a9acf3a0ea3be2751f4"

  url "https://github.com/tretten/kuu/releases/download/v#{version}/Kuu-#{version}.zip"
  name "Kuu"
  desc "Minimal native macOS terminal"
  homepage "https://github.com/tretten/kuu"

  app "Kuu.app"

  postflight do
    system_command "xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Kuu.app"]
  end
end
