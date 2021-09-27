if [ "$(uname -s)" = "Darwin" ]; then
	xcode_path=$(xcode-select --print-path)
	export XCODE=$xcode_path
	export PATH="$XCODE/Tools:$PATH"
fi
