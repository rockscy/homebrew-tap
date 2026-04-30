class Spell < Formula
  desc "AI command palette for your terminal"
  homepage "https://github.com/rockscy/spell"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.2.0/spell_0.2.0_darwin_arm64.tar.gz"
      sha256 "b0a7482e9ae1b120fc2811cc1fb38fcf49edd4b8ec3afae6d8559146fe64f496"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.2.0/spell_0.2.0_darwin_amd64.tar.gz"
      sha256 "fedf6d80a86b411682a3c1d78f8febb6f1e9cf0f1a1c8f8cb536921005629ae8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.2.0/spell_0.2.0_linux_arm64.tar.gz"
      sha256 "84d6c151663788f80a367b58ae0a624ade06eb8fb1da3b463ee78d6024eafdc0"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.2.0/spell_0.2.0_linux_amd64.tar.gz"
      sha256 "684478c1b11ddd7508580c59aa99893deb848a9f13a1eeeea099244ed412e1c5"
    end
  end

  def install
    bin.install "spell"
  end

  test do
    assert_match "spell", shell_output("#{bin}/spell --version")
  end
end
