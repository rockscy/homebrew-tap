class Spell < Formula
  desc "AI command palette for your terminal"
  homepage "https://github.com/rockscy/spell"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.3.1/spell_0.3.1_darwin_arm64.tar.gz"
      sha256 "8d3954a29c8c6425e5f93038f2b1dda42fc1e9d2d54c44c5663ecceb682dd0c4"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.3.1/spell_0.3.1_darwin_amd64.tar.gz"
      sha256 "ad8e7fd53c8b8c78cd0718b2183f4742cac79a93f60828443689f16352feaab8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.3.1/spell_0.3.1_linux_arm64.tar.gz"
      sha256 "4a6871badfb12a14b9967e7cbdf8ca9dca0de57abe689cd221e56ca8b8360ce7"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.3.1/spell_0.3.1_linux_amd64.tar.gz"
      sha256 "4dc54da7674c81a9e30fd5ed7360d81f173f4e644d0ebb7681e51e50e58491b8"
    end
  end

  def install
    bin.install "spell"
  end

  test do
    assert_match "spell", shell_output("#{bin}/spell --version")
  end
end
