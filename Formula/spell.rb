class Spell < Formula
  desc "AI command palette for your terminal"
  homepage "https://github.com/rockscy/spell"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.3.2/spell_0.3.2_darwin_arm64.tar.gz"
      sha256 "85df6f294c2bc38919cc859c77aad4485d6d77d9f78b89c79bedc9fa223bd40e"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.3.2/spell_0.3.2_darwin_amd64.tar.gz"
      sha256 "7924e4e23ad9565a8fa30986d447170a2950bd94f0df7e2b27c9307cbeff75e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.3.2/spell_0.3.2_linux_arm64.tar.gz"
      sha256 "775fa4ea3b9b6b9a95483f213b7365a85b88ad57a80055a2e32467662e38ab4f"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.3.2/spell_0.3.2_linux_amd64.tar.gz"
      sha256 "fece3970629d565dbca725e624250ee4a3b0cb3c48b83ebafe8e657b597d050a"
    end
  end

  def install
    bin.install "spell"
  end

  test do
    assert_match "spell", shell_output("#{bin}/spell --version")
  end
end
