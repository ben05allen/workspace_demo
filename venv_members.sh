PACKAGES=("lib" "pkg-a")

for PKG in "${PACKAGES[@]}"; do
  uv sync --package $PKG &> /dev/null
  echo $PKG
  uv pip list
  echo
done

echo 'All workspace'
uv sync --all-packages &> /dev/null
uv pip list
