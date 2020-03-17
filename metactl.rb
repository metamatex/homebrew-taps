# This file was generated by GoReleaser. DO NOT EDIT.
class Metactl < Formula
  desc ""
  homepage "https://metamate.io"
  version "0.0.34"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/metamatex/metamate/releases/download/v0.0.34/metactl_0.0.34_darwin_amd64.tar.gz"
    sha256 "bd6a635a23a4cedefb9f36d5868ce7f1132e7c2bc0f975d27ea1f39a06f27dea"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/metamatex/metamate/releases/download/v0.0.34/metactl_0.0.34_linux_amd64.tar.gz"
      sha256 "be8531c7ae9b294a6a69d6b241687b4e3e594c3676cd553e82ce29d19e83da85"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metamatex/metamate/releases/download/v0.0.34/metactl_0.0.34_linux_arm64.tar.gz"
        sha256 "e873c208260a0e62acc29caa141eee1e61a6f8ed074fa539385d281419fa196d"
      else
        url "https://github.com/metamatex/metamate/releases/download/v0.0.34/metactl_0.0.34_linux_armv6.tar.gz"
        sha256 "c0a80cfa32bf796f839b5ffad10e6e6652e77dd90aca46759fa699825325f0b6"
      end
    end
  end

  def install
    bin.install "metactl"
  end
end
