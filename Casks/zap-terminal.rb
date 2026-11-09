cask "zap-terminal" do
  version "2026.07.09.2-mod.3"

  on_arm do
    sha256 "92fc179063f602fa6a9d3a316c4e6cd511367d68e4ac0cedd55c1b8adfe9243e"

    url "https://github.com/q0wkp/zap/releases/download/v2026.07.09.2-mod.3/Zap-arm64.dmg"
  end
  on_intel do
    sha256 "bc54b44a5c71152340b3e4bfac05ff99f0abd3562260cc8a9cbd0a386c2e7980"

    url "https://github.com/q0wkp/zap/releases/download/v2026.07.09.2-mod.3/Zap-intel.dmg"
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
