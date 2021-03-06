# This file was generated by GoReleaser. DO NOT EDIT.
class Metactl < Formula
  desc ""
  homepage "https://metamate.io"
  version "0.0.66"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/metamatex/metamate/releases/download/v0.0.66/metactl_0.0.66_darwin_amd64.tar.gz"
    sha256 "2bf8724eeb3c34abd1d30dafede032bee05dd9184a9ed863a636e6ba71e1a398"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/metamatex/metamate/releases/download/v0.0.66/metactl_0.0.66_linux_amd64.tar.gz"
      sha256 "8a1e52c406a9cd980a78401fc78349c44f02f379f771b3a8d8a33e13cfedbe42"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metamatex/metamate/releases/download/v0.0.66/metactl_0.0.66_linux_arm64.tar.gz"
        sha256 "e12eeb9e74a0cb7c0e46b4b0affa3aeab69d3c402c827d83889a39225235b3d9"
      else
        url "https://github.com/metamatex/metamate/releases/download/v0.0.66/metactl_0.0.66_linux_armv6.tar.gz"
        sha256 "0ce5c303f66e1b53ac6e1dcb8e5230f684c0091d4d39a733132a06ec2800ffed"
      end
    end
  end

  def install
    bin.install "metactl"
  end
end
