class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.11.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.11.0/loupe_1.11.0_darwin_arm64.tar.gz"
      sha256 "d6abd20eed3a18f2235ab55487785f8526d0015e5174ad609a63cb4c330bb65b"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.11.0/loupe_1.11.0_darwin_amd64.tar.gz"
      sha256 "d31f699d533d051863b8e044488c528b39495713b43975fe4cbce2a3b63d0e11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.11.0/loupe_1.11.0_linux_arm64.tar.gz"
      sha256 "ea5d522b0383d8ecf07fb2e9e6eba207ac28c76e4027cf36904ca98230310334"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.11.0/loupe_1.11.0_linux_amd64.tar.gz"
      sha256 "db0a99405437ebac11516ef7c41182335908f2acaa253fbb2420c853d8fad8a6"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
