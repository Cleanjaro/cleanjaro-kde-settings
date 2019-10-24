# Maintainer: David Spink <yorper_protonmail.com>

pkgbase=cleanjaro-kde-settings
pkgname=('cleanjaro-kde-settings')
pkgver=20191024
pkgrel=1
pkgdesc="Cleanjaro Linux KDE settings"
arch=('any')
url="https://github.com/Yorper/cleanjaro-kde-settings"
license=('GPL')
makedepends=('git')
source=("$pkgbase::git+$url.git" "touchpadrc")
sha256sums=('SKIP'
            '63cb5ad4d8d07106cf5d989eb10c968fe1e5a5eb70126a772f97f2a75eccb307')

pkgver() {
  date +%Y%m%d
}

package_cleanjaro-kde-settings() {
  pkgdesc="Cleanjaro Linux KDE settings"
  conflicts=('manjaro-desktop-settings' 'manjaro-kde-settings')
  provides=('cleanjaro-desktop-settings' 'cleanjaro-kde-settings')
  depends=('manjaro-base-skel' 'cantarell-fonts' 'breeze' 'breeze-icons' 'breeze-gtk')

  cp -r ${srcdir}/${pkgbase}/etc ${pkgdir}/etc
  cp -H "${srcdir}/touchpadrc" "${pkgdir}/etc/xdg/touchpadrc"
  cp -r ${srcdir}/${pkgbase}/usr ${pkgdir}/usr
}

