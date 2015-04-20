define concattest::file (
  $ensure,
  $path = $title,
) {

  concat { $path:
    ensure         => $ensure,
    ensure_newline => true,
    warn           => true,
  }

}
