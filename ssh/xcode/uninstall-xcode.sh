sudo killall Xcode
sudo xcrun -k
sudo xcodebuild -alltargets clean
sudo rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"
sudo rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang.$(whoami)/ModuleCache"
sudo rm -rf /Applications/Xcode.app
sudo rm -rf ~/Library/Caches/com.apple.dt.Xcode
sudo rm -rf ~/Library/Developer
sudo rm -rf ~/Library/MobileDevice
sudo rm -rf ~/Library/Preferences/com.apple.dt.Xcode.plist
sudo rm -rf ~/Library/Preferences/com.apple.dt.xcodebuild.plist
sudo rm -rf /Library/Preferences/com.apple.dt.Xcode.plist
sudo rm -rf /System/Library/Receipts/com.apple.pkg.XcodeExtensionSupport.bom
sudo rm -rf /System/Library/Receipts/com.apple.pkg.XcodeExtensionSupport.plist
sudo rm -rf /System/Library/Receipts/com.apple.pkg.XcodeSystemResources.bom
sudo rm -rf /System/Library/Receipts/com.apple.pkg.XcodeSystemResources.plist
sudo rm -rf /private/var/db/receipts/com.apple.pkg.Xcode.bom
