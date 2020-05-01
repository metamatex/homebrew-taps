# This file was generated by GoReleaser. DO NOT EDIT.
class Metactl < Formula
  desc ""
  homepage "https://metamate.io"
  version "0.0.56"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/metamatex/metamate/releases/download/v0.0.56/metactl_0.0.56_darwin_amd64.tar.gz"
    sha256 "c18da5fb9875679dcdde147835165b78d1ca65dcaebc760289a5c477dd4acb8e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/metamatex/metamate/releases/download/v0.0.56/metactl_0.0.56_linux_amd64.tar.gz"
      sha256 "379cd9918f26e3ddf84a6aa3eddf960436df9ec741a4d23c1e8a6103ea11e91f"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metamatex/metamate/releases/download/v0.0.56/metactl_0.0.56_linux_arm64.tar.gz"
        sha256 "47ad13cdf5bc3be1d970f55f4c65490a050ee1e2a58dd0ae9c0961e27c31fbac"
      else
        url "https://github.com/metamatex/metamate/releases/download/v0.0.56/metactl_0.0.56_linux_armv6.tar.gz"
        sha256 "df6e8e8ebb693e42ad4fb9151fb540a872d421651235a51eaddb79aaf9efb986"
      end
    end
  end

  def install
    bin.install "metactl"
  end
end
