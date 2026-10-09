class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.13.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.13.0/loupe_1.13.0_darwin_arm64.tar.gz"
      sha256 "04acc5614e879b9f2c61e28ecd88720102d941115036d57b31f6a482b46ef57a"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.13.0/loupe_1.13.0_darwin_amd64.tar.gz"
      sha256 "740359462c85aaf4487a8d88b3732522b54ebc1d1c51f403a1b3bb1462651215"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.13.0/loupe_1.13.0_linux_arm64.tar.gz"
      sha256 "f0e9ac463eeaaff4f5771cd617eef4a3282f6f359d2f3870b4af025b757b0df3"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.13.0/loupe_1.13.0_linux_amd64.tar.gz"
      sha256 "6bc495a3d41eb9167b2beacb088b1f8e85b4f173577644e81209b1584b7c3408"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
