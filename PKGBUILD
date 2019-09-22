# Maintainer: Sighery

pkgbase=fantasque-sans-mono-large-line-height-no-loop-k
pkgname=(
  'otf-fantasque-sans-mono-large-line-height-no-loop-k'
  'ttf-fantasque-sans-mono-large-line-height-no-loop-k'
)
pkgver=1.7.2
pkgrel=1
pkgdesc='Font family with a great monospaced variant for programmers'
arch=('any')
url=https://github.com/belluzj/fantasque-sans
license=('custom:OFL')
depends=('fontconfig' 'xorg-font-utils')
source=("$pkgbase-$pkgver.tar.gz::$url/releases/download/v$pkgver/FantasqueSansMono-LargeLineHeight-NoLoopK.tar.gz")
sha512sums=('4c6e5238e8b84cf3f2164191416557718b6bb60d650efa8a13039ef90a39a685fb4417ca5901a87f17182ec23105ea5928d123d2a413120146d69a564d92a168')

prepare() {
  append="-LargeLineHeight-NoLoopK"

  # Rename OTF files
  cd "$srcdir/OTF/"
  sed_pattern="s/FantasqueSansMono-(.+).otf/FantasqueSansMono-\1$append.otf/p"
  for i in *; do
    replaced=`echo $i | sed -nE "$sed_pattern"`

    if [ -n "$replaced" ]; then
      mv "$i" "$replaced";
    fi
  done

  # Rename TTF files
  cd "$srcdir/TTF/"
  sed_pattern="s/FantasqueSansMono-(.+).ttf/FantasqueSansMono-\1$append.ttf/p"
  for i in *; do
    replaced=`echo $i | sed -nE "$sed_pattern"`

    if [ -n "$replaced" ]; then
      mv "$i" "$replaced";
    fi
  done

  cd "$srcdir"
}

package_otf-fantasque-sans-mono-large-line-height-no-loop-k() {
  pkgdesc='OTF font family with a great monospaced variant for programmers'
  install -Dm644 -t "$pkgdir"/usr/share/fonts/OTF OTF/*.otf
  install -Dm644 LICENSE.txt "$pkgdir"/usr/share/licenses/${pkgname[0]}/LICENSE
}

package_ttf-fantasque-sans-mono-large-line-height-no-loop-k() {
  pkgdesc='TTF font family with a great monospaced variant for programmers'
  install -Dm644 -t "$pkgdir"/usr/share/fonts/TTF TTF/*.ttf
  install -Dm644 LICENSE.txt "$pkgdir"/usr/share/licenses/${pkgname[1]}/LICENSE
}
