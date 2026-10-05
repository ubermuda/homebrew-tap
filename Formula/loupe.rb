class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.8.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.8.0/loupe_1.8.0_darwin_arm64.tar.gz"
      sha256 "4471cd7149a9d1133b21c16087c6806fbe71a84b8ccea53f5d6286d8372b8d44"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.8.0/loupe_1.8.0_darwin_amd64.tar.gz"
      sha256 "61ea1a8fc80e8f20b7f93f16c5c514b6ce0b7d91081a905da9d567bc395b3a7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.8.0/loupe_1.8.0_linux_arm64.tar.gz"
      sha256 "2c09b387d1270f5a63d3d5c1c97183c05c2b0071ced685a4157567052831605b"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.8.0/loupe_1.8.0_linux_amd64.tar.gz"
      sha256 "fad8907eb4792704e3ff452ee1639f517ba0fabf1d801c70d516c12d9fb4c1df"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
