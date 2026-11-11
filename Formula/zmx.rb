class Zmx < Formula
  desc "Session persistence for terminal processes"
  homepage "https://github.com/lutianyu2001/zmx"
  version "0.8.2-mod.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lutianyu2001/zmx/releases/download/v0.8.2-mod.1.1/zmx-0.8.2-mod.1.1-macos-aarch64.tar.gz"
      sha256 "98a3553276d2e562d02064d7c1961b91f5f7dc82eb2708e6bcf27f759b21b268"
    end
    on_intel do
      url "https://github.com/lutianyu2001/zmx/releases/download/v0.8.2-mod.1.1/zmx-0.8.2-mod.1.1-macos-x86_64.tar.gz"
      sha256 "2987afb0cb53c8b8ac671aa9dd81d83be1874904a2fd5c1f0098391fb0adf1c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lutianyu2001/zmx/releases/download/v0.8.2-mod.1.1/zmx-0.8.2-mod.1.1-linux-aarch64.tar.gz"
      sha256 "c0bd4da8b60aaf21a8acf4bd6920a8f061f28cc667b19c24f58b4027fee377b4"
    end
    on_intel do
      url "https://github.com/lutianyu2001/zmx/releases/download/v0.8.2-mod.1.1/zmx-0.8.2-mod.1.1-linux-x86_64.tar.gz"
      sha256 "3c45ade1d6b25956d744c8a803f94ac2e6047df0f0347e4bd02b5de6020a8c17"
    end
  end

  # By its full name: another tap the user has may hold a formula of the same name.
  conflicts_with "q0wkp/tap/zmx-git", because: "both install the zmx program"

  def install
    bin.install "zmx"
    # The license texts of what is built into the program; Homebrew installs LICENSE itself.
    pkgshare.install "third-party"
    generate_completions_from_executable(bin/"zmx", "completions")
  end

  test do
    assert_match "Usage: zmx", shell_output("#{bin}/zmx help")
  end
end
