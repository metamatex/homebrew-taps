# This file was generated by GoReleaser. DO NOT EDIT.
class Metactl < Formula
  desc ""
  homepage "https://metamate.io"
  version "0.0.38"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/metamatex/metamate/releases/download/v0.0.38/metactl_0.0.38_darwin_amd64.tar.gz"
    sha256 "10fff479bb6f25df39ff4d0efaa8977c9003e6331932d98dbe87bf2c583cea35"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/metamatex/metamate/releases/download/v0.0.38/metactl_0.0.38_linux_amd64.tar.gz"
      sha256 "c1eaaa5fe272f85e3f1bc2528a9587956fcf9d6df4e7313303918c35ed4d2805"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metamatex/metamate/releases/download/v0.0.38/metactl_0.0.38_linux_arm64.tar.gz"
        sha256 "0c63d7ab8c30a1df3cb96cb4703bbcc3d5489afbb9d03ada2288249f56955c8b"
      else
        url "https://github.com/metamatex/metamate/releases/download/v0.0.38/metactl_0.0.38_linux_armv6.tar.gz"
        sha256 "8fb751f4448ddbd279d4abe864a0d056b8bd109d0e86dca23c32b96ca1041635"
      end
    end
  end

  def install
    bin.install "metactl"
  end
end
