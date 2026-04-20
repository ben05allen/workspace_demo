PACKAGES=("lib" "pkg-a")

echo 'All workspace'
uv sync --all-packages &> /dev/null
uv pip list

for PKG in "${PACKAGES[@]}"; do
  echo
  uv sync --locked --package $PKG &> /dev/null
  echo $PKG
  uv pip list
done
