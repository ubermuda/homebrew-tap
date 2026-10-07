class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.10.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.10.0/loupe_1.10.0_darwin_arm64.tar.gz"
      sha256 "191d6bae7ac0c2bafeeb82e8a1f178ea007783b7e5eab47e26b935932d0b6b6d"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.10.0/loupe_1.10.0_darwin_amd64.tar.gz"
      sha256 "235fed5e4a2b7197b028486adadf8b859f6d3985746a97a6dda8886773ecb07b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.10.0/loupe_1.10.0_linux_arm64.tar.gz"
      sha256 "8840e27f60dc50a039fcefcf3459800505b25364c61be5b6e4920271d1a63218"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.10.0/loupe_1.10.0_linux_amd64.tar.gz"
      sha256 "fa370caa6f384f026b8203f2d34bac83bfcd235744823807f420371749018463"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
