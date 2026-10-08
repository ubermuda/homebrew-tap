class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.12.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.12.0/loupe_1.12.0_darwin_arm64.tar.gz"
      sha256 "533f992dd561151517429e5e76af67c634122e00cc029d3491d87b3297551f64"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.12.0/loupe_1.12.0_darwin_amd64.tar.gz"
      sha256 "15936ae564c518dc78f219ffc0a2b358b27200803e8d77a38e062397cc469930"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.12.0/loupe_1.12.0_linux_arm64.tar.gz"
      sha256 "8631033e55e125a9f668eabf0c76111590fd857a7cb24ddabde8e0a3c242d2dc"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.12.0/loupe_1.12.0_linux_amd64.tar.gz"
      sha256 "d3f50e633f190ae7c48a88ee43ef81f40c2ff970c296c69a615dd917b3e33a6d"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
