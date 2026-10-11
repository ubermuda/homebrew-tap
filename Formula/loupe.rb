class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.14.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.14.0/loupe_1.14.0_darwin_arm64.tar.gz"
      sha256 "b5098023a2644f9f3f91115b6167b58d6f231aef853afd0693838b4a87d3b3f1"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.14.0/loupe_1.14.0_darwin_amd64.tar.gz"
      sha256 "5978358a511fb21f5a67435fddf5a500b1c4be3206ebeb5f4a81bef794a1f9fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.14.0/loupe_1.14.0_linux_arm64.tar.gz"
      sha256 "630adbdd837ef49ee0079dc72b5a12875dd8e6495213596075f07704faaf89a4"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.14.0/loupe_1.14.0_linux_amd64.tar.gz"
      sha256 "adea80b7a2ac7c754b24bbb3bd8d213fe105f7384009de484145e7a23c0a0b6f"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
