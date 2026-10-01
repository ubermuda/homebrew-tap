class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.5.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.5.0/loupe_1.5.0_darwin_arm64.tar.gz"
      sha256 "a928432a9d6a80cacadc9f6bfc823374c8b60c86509f62557b6b81d71062fca3"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.5.0/loupe_1.5.0_darwin_amd64.tar.gz"
      sha256 "4e7c458a1004e1319106b2289e6f71ff6b5c6c6f0a479e1a984b41ec45f3a818"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.5.0/loupe_1.5.0_linux_arm64.tar.gz"
      sha256 "d974b0c615d3afd3813f6fc2380ca3d55473ec6d96630d56c2153646b687cb9b"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.5.0/loupe_1.5.0_linux_amd64.tar.gz"
      sha256 "946ed503512680d904e33fb0f9c3d48387e35f41c411ad6aecd0453cc99d4ea2"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
