cask "kuu" do
  version "0.8.12"
  sha256 "4d435a5b9480d5d3601b3765fc5abfc80e390e3b492b2a003895ac26f3d2d813"

  url "https://github.com/tretten/kuu/releases/download/v#{version}/Kuu-#{version}.zip"
  name "Kuu"
  desc "Minimal native macOS terminal"
  homepage "https://github.com/tretten/kuu"

  app "Kuu.app"

  postflight do
    system_command "xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Kuu.app"]
  end
end
