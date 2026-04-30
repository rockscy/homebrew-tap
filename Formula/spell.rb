class Spell < Formula
  desc "AI command palette for your terminal"
  homepage "https://github.com/rockscy/spell"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.2.1/spell_0.2.1_darwin_arm64.tar.gz"
      sha256 "f086a46f3939ace79f8b6c71293c9839b47d9cd65b97a6e8418f71fce3b57d97"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.2.1/spell_0.2.1_darwin_amd64.tar.gz"
      sha256 "61d3faff8a08471f3c91587acae5f730153f0db13eede2d42d8f0d378b552e06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.2.1/spell_0.2.1_linux_arm64.tar.gz"
      sha256 "71d3c3de016ef5ebe4837fab6fe0b61f2a98c418954eb2b5d46358942278b3fb"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.2.1/spell_0.2.1_linux_amd64.tar.gz"
      sha256 "3b54545b82928ca01e91896a2670ce78de710f696f80ef38ada894569c56eaf3"
    end
  end

  def install
    bin.install "spell"
  end

  test do
    assert_match "spell", shell_output("#{bin}/spell --version")
  end
end
