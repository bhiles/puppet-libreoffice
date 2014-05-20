# Public: Install Libreoffice.app into /Applications.
#
# Examples
#
#   include libreoffice
#   class { 'libreoffice':
#     version => '4.1.6',
#   }
class libreoffice($version='4.1.6') {
  package { "LibreOffice-${version}":
    provider => 'appdmg',
    source   => "http://download.documentfoundation.org/libreoffice/stable/${version}/mac/x86/LibreOffice_${version}_MacOS_x86.dmg",
  }
}
