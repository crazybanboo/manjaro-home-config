# Defined in - @ line 1
function pon --wraps='xset -x http_proxy http://127.0.0.1:7890; xset -x https_proxy https://127.0.0.1:7890; xset -x all_proxy socks5://127.0.0.1:7891; echo "pon successfully"' --wraps='set -x http_proxy http://127.0.0.1:7890; set -x https_proxy https://127.0.0.1:7890; set -x all_proxy socks5://127.0.0.1:7891; echo "pon successfully"' --wraps='set -x http_proxy http://127.0.0.1:7890' --wraps='set -x http_proxy http://127.0.0.1:7890 &' --wraps='set -x http_proxy http://127.0.0.1:7890; echo ' --wraps='set -x http_proxy http://127.0.0.1:7890; echo ""' --wraps='set -Ux http_proxy http://127.0.0.1:7890; set -Ux https_proxy https://127.0.0.1:7890; set -Ux all_proxy socks5://127.0.0.1:7891; echo "pon successfully"' --description 'alias pon set -Ux http_proxy http://127.0.0.1:7890; set -Ux https_proxy https://127.0.0.1:7890; set -Ux all_proxy socks5://127.0.0.1:7891; echo "pon successfully"'
  set -Ux http_proxy http://127.0.0.1:7890; set -Ux https_proxy https://127.0.0.1:7890; set -Ux all_proxy socks5://127.0.0.1:7891; echo "pon successfully" $argv;
end
