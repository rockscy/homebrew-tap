class Spell < Formula
  desc "AI command palette for your terminal"
  homepage "https://github.com/rockscy/spell"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.3.0/spell_0.3.0_darwin_arm64.tar.gz"
      sha256 "f14a93402a1190aedaafc7b5093508e282287a6488dd3e7181d577ec62bc693b"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.3.0/spell_0.3.0_darwin_amd64.tar.gz"
      sha256 "af56f8f8c1923880fdee0c058c8639536b21ed960ed0c79b27e5e0536ebd0546"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.3.0/spell_0.3.0_linux_arm64.tar.gz"
      sha256 "00e7411bde2d0750ddae92b15133ca778283d907e9d4ec4eeed0cccd1ae1d2be"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.3.0/spell_0.3.0_linux_amd64.tar.gz"
      sha256 "6333fdb1004a0758d90465ef8bc6457540e79d8502947a8d6d50bd96930f5e76"
    end
  end

  def install
    bin.install "spell"
  end

  test do
    assert_match "spell", shell_output("#{bin}/spell --version")
  end
end
