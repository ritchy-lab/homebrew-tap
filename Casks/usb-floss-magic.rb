cask "usb-floss-magic" do
  version "0.7"
  sha256 "7886d34759d5f6b413d7da203962d06c90e43ef989e9d50e30fd86c706605fcc"

  url "https://github.com/ritchy-lab/USB-Floss-Magic/releases/download/v#{version}/USB-Floss-Magic-#{version}-macOS-arm64.zip"
  name "USB-Floss Magic"
  desc "Cleans the junk files macOS, Windows and Linux leave on a USB drive"
  homepage "https://github.com/ritchy-lab/USB-Floss-Magic"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "USB-Floss Magic.app"

  caveats <<~EOS
    USB-Floss Magic is not signed with a paid Apple certificate, so macOS will
    refuse to open it the first time. To allow it: right-click the app in
    /Applications and choose "Open", then confirm.
  EOS
end
