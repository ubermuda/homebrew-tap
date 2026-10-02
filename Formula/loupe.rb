class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.6.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.6.0/loupe_1.6.0_darwin_arm64.tar.gz"
      sha256 "061901650d8eff17fb4f69df0b588aca29c6034e36d61d8e077b8412ec037e40"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.6.0/loupe_1.6.0_darwin_amd64.tar.gz"
      sha256 "e116167c622beaddda37d4611bc075622550b8b240e3968e1270690685a42e0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.6.0/loupe_1.6.0_linux_arm64.tar.gz"
      sha256 "82cff5b5d941274540e42d3dbba03946de2571dc626cc669a0c2d0bb3415cab1"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.6.0/loupe_1.6.0_linux_amd64.tar.gz"
      sha256 "006ad13fe5e67feef34456df23d112a9a3bfb785af85f198b7968ee1b70e76e2"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
