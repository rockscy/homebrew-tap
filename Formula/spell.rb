class Spell < Formula
  desc "AI command palette for your terminal"
  homepage "https://github.com/rockscy/spell"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.4.0/spell_0.4.0_darwin_arm64.tar.gz"
      sha256 "8a0c9596cdde05654990aa3e82393c6e8f6f8679949579818565b64c882f2eae"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.4.0/spell_0.4.0_darwin_amd64.tar.gz"
      sha256 "4d68309b81620798af22f3b57fdd857cae7377b9503cb2495b32e67892561514"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.4.0/spell_0.4.0_linux_arm64.tar.gz"
      sha256 "c76ebf0e441ff9c42dc842c22439904786908687766798be5cc4ca9844451e9f"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.4.0/spell_0.4.0_linux_amd64.tar.gz"
      sha256 "6fc5d90f9134ecd4baaa7bb7319ce4b3f2670488e4d30118a353523d92aa7c05"
    end
  end

  def install
    bin.install "spell"
  end

  test do
    assert_match "spell", shell_output("#{bin}/spell --version")
  end
end
