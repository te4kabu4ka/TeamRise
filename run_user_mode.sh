#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-4173}"

cat <<MSG
🚀 Rise Staff: пользовательский режим (чистый старт)

1) Открой приложение: http://localhost:${PORT}
2) Для теста "с нуля" используй режим инкогнито (чтобы localStorage был пустой).
3) Альтернатива: в DevTools -> Application -> Local Storage -> удалить ключ riseStaffEmployee.

Нажми Ctrl+C для остановки сервера.
MSG

python3 -m http.server "${PORT}"
