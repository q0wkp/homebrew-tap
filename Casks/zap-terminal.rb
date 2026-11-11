cask "zap-terminal" do
  version "2026.07.09.2-mod.1.1"

  on_arm do
    sha256 "3c15add1eff71b9bc3a7158e47a9652a66f48926e63c51013c4844ecb0be7fc5"

    url "https://github.com/q0wkp/zap/releases/download/v2026.07.09.2-mod.1.1/zap-2026.07.09.2-mod.1.1-macos-aarch64.dmg"
  end
  on_intel do
    sha256 "1f474564f872d1548a15c29012a397f0e71f7d13221787b3aa2844814d5a6282"

    url "https://github.com/q0wkp/zap/releases/download/v2026.07.09.2-mod.1.1/zap-2026.07.09.2-mod.1.1-macos-x86_64.dmg"
  end

  name "Zap"
  desc "Community fork of the Warp terminal"
  homepage "https://github.com/q0wkp/zap"

  auto_updates true
  conflicts_with cask: "zap"
  depends_on :macos

  app "Zap.app"

  # The app isn't notarized, so Gatekeeper would refuse to open it.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Zap.app"]
  end
end
