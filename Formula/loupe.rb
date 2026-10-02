class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.7.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.7.0/loupe_1.7.0_darwin_arm64.tar.gz"
      sha256 "ed43977ec68d41fc8b39c8bdccb8e02523066386922eec8277a28c6240156aa8"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.7.0/loupe_1.7.0_darwin_amd64.tar.gz"
      sha256 "9f0b9d8cb007df899fdd66b5cc2d325b8824a28a2528d60d3abf9aa6ae2fe9de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.7.0/loupe_1.7.0_linux_arm64.tar.gz"
      sha256 "9448464d3b71867316f43c5779394a137efd60a75b4fb66718db650cbdcd4983"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.7.0/loupe_1.7.0_linux_amd64.tar.gz"
      sha256 "cef57e9f23eae053263dbc6edfdaa3125173b9a786d8e2e3a6290d027090969a"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
