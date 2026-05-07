class Spell < Formula
  desc "AI command palette for your terminal"
  homepage "https://github.com/rockscy/spell"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.4.1/spell_0.4.1_darwin_arm64.tar.gz"
      sha256 "517b4d6ccb4c2687f7f44830f1d4c3142990cb7ae7adce10309805b1e680d2a2"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.4.1/spell_0.4.1_darwin_amd64.tar.gz"
      sha256 "d1a45fcd27278a54ff2109a26125d048018b09d0903c7bf66d0275b38386f061"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rockscy/spell/releases/download/v0.4.1/spell_0.4.1_linux_arm64.tar.gz"
      sha256 "91359a71c34d80a9bf12e19363007f980c315a077115097a2669a728325f46fc"
    end
    on_intel do
      url "https://github.com/rockscy/spell/releases/download/v0.4.1/spell_0.4.1_linux_amd64.tar.gz"
      sha256 "965820a16671288f4538857da5e1d06fe926d1ef7c3cb1b00c7aa1d8f415c954"
    end
  end

  def install
    bin.install "spell"
  end

  test do
    assert_match "spell", shell_output("#{bin}/spell --version")
  end
end
