class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.9.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.9.0/loupe_1.9.0_darwin_arm64.tar.gz"
      sha256 "fd5d105139a687a69d8a7565d51bb1ac2ae844df189576707219b18b1192b546"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.9.0/loupe_1.9.0_darwin_amd64.tar.gz"
      sha256 "74157b6503dc990c355b81aecf5df9c64a189d5e318aad89926157b968b35876"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.9.0/loupe_1.9.0_linux_arm64.tar.gz"
      sha256 "9a2404d8d0f0ffa7bbacf9e84953e476600ce141f766060d18d0ebfd4b82c3dc"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.9.0/loupe_1.9.0_linux_amd64.tar.gz"
      sha256 "18e73489a73caae0023c5bb9571b2db2fceed4a7a0a8fc0033144d2a570a822c"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
