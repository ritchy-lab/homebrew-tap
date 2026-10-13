cask "usb-floss" do
  version "1.3"
  sha256 "c5ef637e5d96141ad82911f8dbffc54b7163d18dcf58f9f5d6a5e7482a096b85"

  url "https://github.com/ritchy-lab/USB-Floss/releases/download/v#{version}/USB-Floss-#{version}-macOS-arm64.zip"
  name "USB-Floss"
  desc "Simple, compact cleaner for the junk files left on a USB drive"
  homepage "https://github.com/ritchy-lab/USB-Floss"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "USB-Floss.app"

  caveats <<~EOS
    USB-Floss is not signed with a paid Apple certificate, so macOS will refuse
    to open it the first time. To allow it: right-click the app in /Applications
    and choose "Open", then confirm.
  EOS
end
