# HomeKB engine — standalone binary (docs/ARCHITECTURE.md "Distribution").
# Bumped on each engine-v* release: version + the three sha256 values.
class Homekb < Formula
  desc "Personal markdown knowledge base: compile, semantic search, serve"
  homepage "https://github.com/do-md/homekb"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/do-md/homekb/releases/download/engine-v0.1.0/homekb-macos-arm64.tar.gz"
      sha256 "0599192cedc6120901e440de9df1f0dd6a7054833896ec74523c654a7df5fed1"
    end
    on_intel do
      url "https://github.com/do-md/homekb/releases/download/engine-v0.1.0/homekb-macos-x64.tar.gz"
      sha256 "7e077150ca569f2c9b9a21de18cf244db0c292377215cecba459e66537c23778"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/do-md/homekb/releases/download/engine-v0.1.0/homekb-linux-x64.tar.gz"
      sha256 "d67fc26bbe887bc1e36ca8423d92ff6c7d2fa53daf5250f78914e0dd4dbca251"
    end
  end

  def install
    bin.install "homekb"
  end

  test do
    assert_match "homekb #{version}", shell_output("#{bin}/homekb --version")
  end
end
