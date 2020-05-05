# This file was generated by GoReleaser. DO NOT EDIT.
class Metactl < Formula
  desc ""
  homepage "https://metamate.io"
  version "0.0.58"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/metamatex/metamate/releases/download/v0.0.58/metactl_0.0.58_darwin_amd64.tar.gz"
    sha256 "e9cf223913a2cc81ed17ee155f74e13088231f82c1f90980c60f70fe599edd07"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/metamatex/metamate/releases/download/v0.0.58/metactl_0.0.58_linux_amd64.tar.gz"
      sha256 "0ff2e9391319b2bd36add405835fc45eea2c2ed15246d3f4c52c3ba2d2697ffc"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metamatex/metamate/releases/download/v0.0.58/metactl_0.0.58_linux_arm64.tar.gz"
        sha256 "f8aebe773d5a6e685b72c34a832a547f2bd682a7ab3d481c5d3e333a820fe219"
      else
        url "https://github.com/metamatex/metamate/releases/download/v0.0.58/metactl_0.0.58_linux_armv6.tar.gz"
        sha256 "814927f2b0143d503ad32c39dd61b0c8977c146fcc7a450e10891eaf362be54f"
      end
    end
  end

  def install
    bin.install "metactl"
  end
end
