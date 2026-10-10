cask "kuu" do
  version "0.8.23"
  sha256 "bedf4cc7f93752a0fff0f91df0320828dd04edd57430ee3ad9cae23be4862361"

  url "https://github.com/tretten/kuu/releases/download/v#{version}/Kuu-#{version}.zip"
  name "Kuu"
  desc "Minimal native terminal"
  homepage "https://github.com/tretten/kuu"

  depends_on :macos

  app "Kuu.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Kuu.app"]
  end
end
