#!/usr/bin/env bash

# =============================================
# RCITERMINAL - Rzayeff Agha Premium Downloader
# Version: 3.1.0
# =============================================

declare -A COLORS=(
    ["RED"]='\033[1;38;5;196m'
    ["GREEN"]='\033[1;38;5;46m' 
    ["YELLOW"]='\033[1;38;5;226m'
    ["BLUE"]='\033[1;38;5;33m'
    ["PURPLE"]='\033[1;38;5;129m'
    ["CYAN"]='\033[1;38;5;51m'
    ["ORANGE"]='\033[1;38;5;208m'
    ["PINK"]='\033[1;38;5;201m'
    ["WHITE"]='\033[1;38;5;255m'
    ["GRAY"]='\033[1;38;5;245m'
    ["RESET"]='\033[0m'
)

declare -A LANG=(
    ["az"]="Azərbaycanca" ["en"]="English" ["tr"]="Türkçe" ["ru"]="Русский"
)

declare -A STRINGS=()

load_strings() {
    case $CURRENT_LANG in
        "az")
            STRINGS=(
                ["WELCOME"]="RCITERMINAL Premium Downloader"
                ["VERSION"]="Versiya"
                ["AUTHOR"]="Müəllif"
                ["SELECT_LANG"]="Dil seçin"
                ["MENU_MAIN"]="ƏSAS MENYU"
                ["MENU_DOWNLOAD"]="YÜKLƏMƏ"
                ["MENU_QUALITY"]="KEYFİYYƏT"
                ["MENU_SETTINGS"]="PARAMETRLƏR"
                ["OPT_QUICK_DL"]="Sürətli Yükləmə"
                ["OPT_MP3"]="MP3 Konvertor"
                ["OPT_VIDEO"]="Video Yükləyici"
                ["OPT_PLAYLIST"]="Playlist Yüklə"
                ["OPT_BATCH"]="Çoxlu Yükləmə"
                ["OPT_SPEEDTEST"]="Sürət Testi"
                ["OPT_UPDATE"]="Yeniləmələr"
                ["OPT_SYSINFO"]="Sistem Məlumatı"
                ["OPT_EXIT"]="Çıxış"
                ["QUALITY_MP3_128"]="MP3 Audio (128k)"
                ["QUALITY_MP3_320"]="MP3 Audio (320k)"
                ["QUALITY_480"]="480p Video"
                ["QUALITY_720"]="720p HD"
                ["QUALITY_1080"]="1080p Full HD"
                ["QUALITY_2K"]="2K Ultra HD"
                ["QUALITY_4K"]="4K Ultra HD"
                ["QUALITY_BEST"]="Ən Yaxşı Keyfiyyət"
                ["QUALITY_AI"]="AI Optimallaşdırılmış"
                ["ENTER_URL"]="URL daxil edin"
                ["ANALYZING"]="Link analiz edilir"
                ["DOWNLOAD_START"]="Yükləmə başladı"
                ["DOWNLOAD_COMPLETE"]="Yükləmə tamamlandı"
                ["DOWNLOAD_FAILED"]="Yükləmə uğursuz"
                ["SPEED_TEST"]="İnternet sürəti yoxlanılır"
                ["UPDATING"]="Yenilənir"
                ["UPDATING_CHECK"]="Yeniləmə yoxlanılır"
                ["SYSTEM_INFO"]="Sistem Məlumatı"
                ["INVALID_URL"]="Yanlış URL"
                ["INVALID_OPTION"]="Yanlış seçim"
                ["PRESS_CONTINUE"]="Davam etmək üçün bir düymə basın"
                ["GOODBYE"]="Sag olun!"
            )
            ;;
        "en")
            STRINGS=(
                ["WELCOME"]="RCITERMINAL Premium Downloader"
                ["VERSION"]="Version"
                ["AUTHOR"]="Author"
                ["SELECT_LANG"]="Select language"
                ["MENU_MAIN"]="MAIN MENU"
                ["MENU_DOWNLOAD"]="DOWNLOAD"
                ["MENU_QUALITY"]="QUALITY"
                ["MENU_SETTINGS"]="SETTINGS"
                ["OPT_QUICK_DL"]="Quick Download"
                ["OPT_MP3"]="MP3 Converter"
                ["OPT_VIDEO"]="Video Downloader"
                ["OPT_PLAYLIST"]="Download Playlist"
                ["OPT_BATCH"]="Batch Download"
                ["OPT_SPEEDTEST"]="Speed Test"
                ["OPT_UPDATE"]="Check Updates"
                ["OPT_SYSINFO"]="System Info"
                ["OPT_EXIT"]="Exit"
                ["QUALITY_MP3_128"]="MP3 Audio (128k)"
                ["QUALITY_MP3_320"]="MP3 Audio (320k)"
                ["QUALITY_480"]="480p Video"
                ["QUALITY_720"]="720p HD"
                ["QUALITY_1080"]="1080p Full HD"
                ["QUALITY_2K"]="2K Ultra HD"
                ["QUALITY_4K"]="4K Ultra HD"
                ["QUALITY_BEST"]="Best Quality"
                ["QUALITY_AI"]="AI Optimized"
                ["ENTER_URL"]="Enter URL"
                ["ANALYZING"]="Analyzing link"
                ["DOWNLOAD_START"]="Download started"
                ["DOWNLOAD_COMPLETE"]="Download completed"
                ["DOWNLOAD_FAILED"]="Download failed"
                ["SPEED_TEST"]="Checking internet speed"
                ["UPDATING"]="Updating"
                ["UPDATING_CHECK"]="Checking for updates"
                ["SYSTEM_INFO"]="System Information"
                ["INVALID_URL"]="Invalid URL"
                ["INVALID_OPTION"]="Invalid option"
                ["PRESS_CONTINUE"]="Press any key to continue"
                ["GOODBYE"]="Goodbye!"
            )
            ;;
        "tr")
            STRINGS=(
                ["WELCOME"]="RCITERMINAL Premium İndirici"
                ["VERSION"]="Versiyon"
                ["AUTHOR"]="Yazar"
                ["SELECT_LANG"]="Dil seçin"
                ["MENU_MAIN"]="ANA MENÜ"
                ["MENU_DOWNLOAD"]="İNDİRME"
                ["MENU_QUALITY"]="KALİTE"
                ["MENU_SETTINGS"]="AYARLAR"
                ["OPT_QUICK_DL"]="Hızlı İndirme"
                ["OPT_MP3"]="MP3 Dönüştürücü"
                ["OPT_VIDEO"]="Video İndirici"
                ["OPT_PLAYLIST"]="Playlist İndir"
                ["OPT_BATCH"]="Toplu İndirme"
                ["OPT_SPEEDTEST"]="Hız Testi"
                ["OPT_UPDATE"]="Güncellemeler"
                ["OPT_SYSINFO"]="Sistem Bilgisi"
                ["OPT_EXIT"]="Çıkış"
                ["QUALITY_MP3_128"]="MP3 Ses (128k)"
                ["QUALITY_MP3_320"]="MP3 Ses (320k)"
                ["QUALITY_480"]="480p Video"
                ["QUALITY_720"]="720p HD"
                ["QUALITY_1080"]="1080p Full HD"
                ["QUALITY_2K"]="2K Ultra HD"
                ["QUALITY_4K"]="4K Ultra HD"
                ["QUALITY_BEST"]="En Kaliteli"
                ["QUALITY_AI"]="AI Optimize"
                ["ENTER_URL"]="URL girin"
                ["ANALYZING"]="Link analiz ediliyor"
                ["DOWNLOAD_START"]="İndirme başladı"
                ["DOWNLOAD_COMPLETE"]="İndirme tamamlandı"
                ["DOWNLOAD_FAILED"]="İndirme başarısız"
                ["SPEED_TEST"]="İnternet hızı kontrol ediliyor"
                ["UPDATING"]="Güncelleniyor"
                ["UPDATING_CHECK"]="Güncellemeler kontrol ediliyor"
                ["SYSTEM_INFO"]="Sistem Bilgisi"
                ["INVALID_URL"]="Geçersiz URL"
                ["INVALID_OPTION"]="Geçersiz seçenek"
                ["PRESS_CONTINUE"]="Devam etmek için bir tuşa basın"
                ["GOODBYE"]="Güle güle!"
            )
            ;;
        "ru")
            STRINGS=(
                ["WELCOME"]="RCITERMINAL Premium Загрузчик"
                ["VERSION"]="Версия"
                ["AUTHOR"]="Автор"
                ["SELECT_LANG"]="Выберите язык"
                ["MENU_MAIN"]="ГЛАВНОЕ МЕНЮ"
                ["MENU_DOWNLOAD"]="ЗАГРУЗКА"
                ["MENU_QUALITY"]="КАЧЕСТВО"
                ["MENU_SETTINGS"]="НАСТРОЙКИ"
                ["OPT_QUICK_DL"]="Быстрая Загрузка"
                ["OPT_MP3"]="MP3 Конвертер"
                ["OPT_VIDEO"]="Загрузчик Видео"
                ["OPT_PLAYLIST"]="Загрузить Плейлист"
                ["OPT_BATCH"]="Пакетная Загрузка"
                ["OPT_SPEEDTEST"]="Тест Скорости"
                ["OPT_UPDATE"]="Проверить Обновления"
                ["OPT_SYSINFO"]="Информация о Системе"
                ["OPT_EXIT"]="Выход"
                ["QUALITY_MP3_128"]="MP3 Аудио (128k)"
                ["QUALITY_MP3_320"]="MP3 Аудио (320k)"
                ["QUALITY_480"]="480p Видео"
                ["QUALITY_720"]="720p HD"
                ["QUALITY_1080"]="1080p Full HD"
                ["QUALITY_2K"]="2K Ultra HD"
                ["QUALITY_4K"]="4K Ultra HD"
                ["QUALITY_BEST"]="Лучшее Качество"
                ["QUALITY_AI"]="AI Оптимизированный"
                ["ENTER_URL"]="Введите URL"
                ["ANALYZING"]="Анализируется ссылка"
                ["DOWNLOAD_START"]="Загрузка началась"
                ["DOWNLOAD_COMPLETE"]="Загрузка завершена"
                ["DOWNLOAD_FAILED"]="Загрузка не удалась"
                ["SPEED_TEST"]="Проверка скорости интернета"
                ["UPDATING"]="Обновляется"
                ["UPDATING_CHECK"]="Проверка обновлений"
                ["SYSTEM_INFO"]="Информация о Системе"
                ["INVALID_URL"]="Неверный URL"
                ["INVALID_OPTION"]="Неверный вариант"
                ["PRESS_CONTINUE"]="Нажмите любую клавишу для продолжения"
                ["GOODBYE"]="До свидания!"
            )
            ;;
    esac
}

VERSION="3.1.0"
CONFIG_DIR="$HOME/.config/rciterminal"
LANG_FILE="$CONFIG_DIR/language.conf"
LOG_FILE="$CONFIG_DIR/rciterminal.log"
UPDATE_URL="https://raw.githubusercontent.com/rzayevaga/rciterminal/main/rciterminal.sh"
PLATFORM="unknown"
CURRENT_LANG="en"

ANIM=("⣷" "⣯" "⣟" "⡿" "⢿" "⣻" "⣽" "⣾")

detect_platform() {
    if [[ -d "/data/data/com.termux" ]]; then
        PLATFORM="termux"
    elif command -v apt > /dev/null 2>&1; then
        PLATFORM="debian"
    elif command -v yum > /dev/null 2>&1; then
        PLATFORM="redhat"
    elif command -v pacman > /dev/null 2>&1; then
        PLATFORM="arch"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        PLATFORM="macos"
    else
        PLATFORM="unknown"
    fi
}

init_directories() {
    mkdir -p "$CONFIG_DIR"
    mkdir -p "$HOME/Downloads/Music"
    mkdir -p "$HOME/Downloads/Videos"
    mkdir -p "$HOME/Downloads/Playlists"
}

load_language() {
    if [[ -f "$LANG_FILE" ]]; then
        CURRENT_LANG=$(cat "$LANG_FILE")
    else
        select_language
    fi
    load_strings
}

select_language() {
    clear
    echo -e "${COLORS[PURPLE]}${BOLD}"
    echo "╔════════════════════════════════════════════════╗"
    echo "║               DİL SEÇİMİ / LANGUAGE           ║"
    echo "║                 SELECTION                     ║"
    echo "╚════════════════════════════════════════════════╝"
    echo -e "${COLORS[RESET]}"
    
    echo -e "${COLORS[CYAN]}${STRINGS[SELECT_LANG]}:${COLORS[RESET]}"
    echo -e "${COLORS[GREEN]}1) Azərbaycanca"
    echo -e "2) English" 
    echo -e "3) Türkçe"
    echo -e "4) Русский${COLORS[RESET]}"
    
    read -p "Seçim / Choice (1-4): " lang_choice
    
    case $lang_choice in
        1) CURRENT_LANG="az" ;;
        2) CURRENT_LANG="en" ;;
        3) CURRENT_LANG="tr" ;;
        4) CURRENT_LANG="ru" ;;
        *) CURRENT_LANG="en" ;;
    esac
    
    echo "$CURRENT_LANG" > "$LANG_FILE"
    load_strings
}

show_header() {
    clear
    echo -e "${COLORS[PURPLE]}${BOLD}"
    echo "╔════════════════════════════════════════════════╗"
    echo "║              ${COLORS[CYAN]}RCITERMINAL${COLORS[PURPLE]}                  ║"
    echo "║           ${COLORS[YELLOW]}${STRINGS[WELCOME]}${COLORS[PURPLE]}           ║"
    echo "╚════════════════════════════════════════════════╝"
    echo -e "${COLORS[RESET]}"
    
    echo -e "${COLORS[GRAY]}${STRINGS[VERSION]}: $VERSION | ${STRINGS[AUTHOR]}: Rzayeff Agha"
    echo -e "GitHub: /rzayevaga | Web: https://rzayeffdi.tech"
    echo -e "${COLORS[PURPLE]}════════════════════════════════════════════════${COLORS[RESET]}"
    echo
}

show_main_menu() {
    echo -e "${COLORS[CYAN]}${BOLD}🎯 ${STRINGS[MENU_MAIN]}${COLORS[RESET]}"
    echo -e "${COLORS[GREEN]}1) 📥 ${STRINGS[OPT_QUICK_DL]}"
    echo -e "2) 🎵 ${STRINGS[OPT_MP3]}"
    echo -e "3) 📹 ${STRINGS[OPT_VIDEO]}"
    echo -e "4) 📋 ${STRINGS[OPT_PLAYLIST]}"
    echo -e "5) 🌐 ${STRINGS[OPT_BATCH]}"
    echo -e "6) ⚡ ${STRINGS[OPT_SPEEDTEST]}"
    echo -e "7) ⚙️  ${STRINGS[MENU_SETTINGS]}"
    echo -e "8) 🔄 ${STRINGS[OPT_UPDATE]}"
    echo -e "9) ℹ️  ${STRINGS[OPT_SYSINFO]}"
    echo -e "0) ❌ ${STRINGS[OPT_EXIT]}${COLORS[RESET]}"
    echo -e "${COLORS[PURPLE]}────────────────────────────────────────────────${COLORS[RESET]}"
}

show_quality_menu() {
    echo -e "${COLORS[CYAN]}${BOLD}🎬 ${STRINGS[MENU_QUALITY]}${COLORS[RESET]}"
    echo -e "${COLORS[GREEN]}1) 🎵 ${STRINGS[QUALITY_MP3_128]}"
    echo -e "2) 🎵 ${STRINGS[QUALITY_MP3_320]}"
    echo -e "3) 📹 ${STRINGS[QUALITY_480]}"
    echo -e "4) 📹 ${STRINGS[QUALITY_720]}"
    echo -e "5) 📹 ${STRINGS[QUALITY_1080]}"
    echo -e "6) 📹 ${STRINGS[QUALITY_2K]}"
    echo -e "7) 📹 ${STRINGS[QUALITY_4K]}"
    echo -e "8) 🚀 ${STRINGS[QUALITY_BEST]}"
    echo -e "9) 🤖 ${STRINGS[QUALITY_AI]}"
    echo -e "0) ↩️  Geri${COLORS[RESET]}"
}

animated_spinner() {
    local pid=$1
    local message="$2"
    local delay=0.1
    local spin_idx=0
    
    while kill -0 $pid 2>/dev/null; do
        local spin_char="${ANIM[$spin_idx]}"
        echo -ne "\r${COLORS[CYAN]}${spin_char}${COLORS[RESET]} ${message}..."
        spin_idx=$(( (spin_idx + 1) % ${#ANIM[@]} ))
        sleep $delay
    done
    echo -ne "\r${COLORS[GREEN]}✅${COLORS[RESET]} ${message} tamamlandı"
}

ai_analyze_content() {
    local url="$1"
    echo -e "${COLORS[BLUE]}🤖 AI tərəfindən məzmun analiz edilir...${COLORS[RESET]}"
    
    local content_info=$(yt-dlp --dump-json "$url" 2>/dev/null | head -1)
    
    if [[ -z "$content_info" ]]; then
        echo "best"
        return
    fi
    
    local duration=$(echo "$content_info" | jq -r '.duration // 0')
    local filesize=$(echo "$content_info" | jq -r '.filesize_approx // 0')
    local is_music=$(echo "$content_info" | jq -r '.categories? // [] | map(select(. | test("music"; "i"))) | length > 0')
    local is_short=$(echo "$content_info" | jq -r '.duration // 0 < 60')
    
    if [[ "$is_music" == "true" ]] || [[ $duration -lt 300 ]]; then
        if [[ $filesize -gt 50000000 ]]; then
            echo "720"
        else
            echo "best"
        fi
    elif [[ $duration -gt 3600 ]]; then
        echo "480"
    elif [[ $filesize -gt 100000000 ]]; then
        echo "720"
    else
        echo "1080"
    fi
}

detect_platform_type() {
    local url="$1"
    
    case $url in
        *youtube.com*|*youtu.be*)
            echo "youtube"
            ;;
        *instagram.com*)
            echo "instagram" 
            ;;
        *tiktok.com*)
            echo "tiktok"
            ;;
        *)
            echo "generic"
            ;;
    esac
}

platform_specific_download() {
    local url="$1"
    local quality="$2"
    local platform=$(detect_platform_type "$url")
    
    local output_template=""
    local format_args=""
    
    case $platform in
        "youtube")
            output_template="$HOME/Downloads/Videos/YouTube/%(title)s.%(ext)s"
            mkdir -p "$HOME/Downloads/Videos/YouTube"
            ;;
        "instagram")
            output_template="$HOME/Downloads/Videos/Instagram/%(title)s.%(ext)s"
            mkdir -p "$HOME/Downloads/Videos/Instagram"
            ;;
        "tiktok") 
            output_template="$HOME/Downloads/Videos/TikTok/%(title)s.%(ext)s"
            mkdir -p "$HOME/Downloads/Videos/TikTok"
            ;;
        *)
            output_template="$HOME/Downloads/Videos/%(title)s.%(ext)s"
            ;;
    esac
    
    case $quality in
        "mp3_128")
            output_template="$HOME/Downloads/Music/%(title)s.%(ext)s"
            format_args="-x --audio-format mp3 --audio-quality 5"
            ;;
        "mp3_320")
            output_template="$HOME/Downloads/Music/%(title)s.%(ext)s"
            format_args="-x --audio-format mp3 --audio-quality 0"
            ;;
        "480")
            format_args="-f 'bestvideo[height<=480]+bestaudio/best[height<=480]'"
            ;;
        "720")
            format_args="-f 'bestvideo[height<=720]+bestaudio/best[height<=720]'"
            ;;
        "1080")
            format_args="-f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"
            ;;
        "2k")
            format_args="-f 'bestvideo[height<=1440]+bestaudio/best[height<=1440]'"
            ;;
        "4k")
            format_args="-f 'bestvideo[height<=2160]+bestaudio/best[height<=2160]'"
            ;;
        "best")
            format_args="-f 'bestvideo+bestaudio/best'"
            ;;
        "ai")
            local ai_quality=$(ai_analyze_content "$url")
            platform_specific_download "$url" "$ai_quality"
            return
            ;;
        *)
            format_args="-f best"
            ;;
    esac
    
    echo -e "${COLORS[YELLOW]}⏬ ${STRINGS[DOWNLOAD_START]}...${COLORS[RESET]}"
    
    eval "yt-dlp $format_args -o '$output_template' --add-metadata --embed-thumbnail '$url'" &
    local download_pid=$!
    
    animated_spinner $download_pid "${STRINGS[DOWNLOAD_START]}"
    
    if wait $download_pid; then
        echo -e "\n${COLORS[GREEN]}✅ ${STRINGS[DOWNLOAD_COMPLETE]}!${COLORS[RESET]}"
    else
        echo -e "\n${COLORS[RED]}❌ ${STRINGS[DOWNLOAD_FAILED]}!${COLORS[RESET]}"
    fi
}

speed_test() {
    echo -e "${COLORS[BLUE]}🌐 ${STRINGS[SPEED_TEST]}...${COLORS[RESET]}"
    
    if command -v speedtest-cli > /dev/null 2>&1; then
        speedtest-cli --simple
    else
        echo -e "${COLORS[YELLOW]}⚠️ speedtest-cli yüklənir...${COLORS[RESET]}"
        pip install speedtest-cli
        speedtest-cli --simple
    fi
}

check_updates() {
    echo -e "${COLORS[BLUE]}🔄 ${STRINGS[UPDATING_CHECK]}...${COLORS[RESET]}"
    
    if ! command -v curl > /dev/null 2>&1; then
        echo -e "${COLORS[YELLOW]}⚠️ curl tapılmadı${COLORS[RESET]}"
        return 1
    fi

    local latest_version=$(curl -s "$UPDATE_URL" | grep -m1 "VERSION=" | cut -d'"' -f2)
    
    if [[ "$latest_version" != "$VERSION" ]]; then
        echo -e "${COLORS[YELLOW]}🆕 Yeni versiya: $latest_version${COLORS[RESET]}"
        echo -e "${COLORS[GRAY]}Mevcut versiya: $VERSION${COLORS[RESET]}"
        
        read -p "Yenilənsin? (e/h): " update_choice
        if [[ "$update_choice" =~ [eEyY] ]]; then
            update_script
        fi
    else
        echo -e "${COLORS[GREEN]}✅ Ən son versiya${COLORS[RESET]}"
    fi
}

update_script() {
    echo -e "${COLORS[BLUE]}⬇️ ${STRINGS[UPDATING]}...${COLORS[RESET]}"
    
    if curl -s "$UPDATE_URL" -o "$0.tmp"; then
        chmod +x "$0.tmp"
        mv "$0.tmp" "$0"
        echo -e "${COLORS[GREEN]}✅ Script yeniləndi${COLORS[RESET]}"
        echo -e "${COLORS[YELLOW]}🔄 Yenidən başladılır...${COLORS[RESET]}"
        exec "$0" "$@"
    else
        echo -e "${COLORS[RED]}❌ Yeniləmə uğursuz${COLORS[RESET]}"
        rm -f "$0.tmp"
    fi
}

system_info() {
    echo -e "${COLORS[CYAN]}${BOLD}🖥️  ${STRINGS[SYSTEM_INFO]}${COLORS[RESET]}"
    echo -e "${COLORS[GRAY]}• Sistem: $(uname -o 2>/dev/null || uname -s)"
    echo -e "• Platform: $PLATFORM"
    echo -e "• Dil: ${LANG[$CURRENT_LANG]}"
    echo -e "• İstifadəçi: $(whoami)"
    echo -e "• Shell: $SHELL${COLORS[RESET]}"
    
    echo -e "\n${COLORS[YELLOW]}💾 Disk İstifadəsi${COLORS[RESET]}"
    df -h ~ | awk 'NR==2 {print "• İstifadə: " $5 " • Boş: " $4}'
}

create_rci_command() {
    if [[ "$PLATFORM" == "termux" ]]; then
        local bin_dir="$HOME/bin"
        mkdir -p "$bin_dir"
        cat > "$bin_dir/rci" << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
~/rciterminal.sh
EOF
        chmod +x "$bin_dir/rci"
        echo -e "${COLORS[GREEN]}✅ 'rci' əmri yaradıldı${COLORS[RESET]}"
    else
        local bin_dir="/usr/local/bin"
        if [[ -w "$bin_dir" ]]; then
            cat > "$bin_dir/rci" << 'EOF'
#!/bin/bash
~/rciterminal.sh
EOF
            chmod +x "$bin_dir/rci"
            echo -e "${COLORS[GREEN]}✅ 'rci' əmri yaradıldı${COLORS[RESET]}"
        fi
    fi
}

create_url_opener() {
    if [[ "$PLATFORM" == "termux" ]]; then
        local bin_dir="$HOME/bin"
        mkdir -p "$bin_dir"
        cat > "$bin_dir/termux-url-opener" << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

for url in "$@"; do
    if [[ $url == *"youtube.com"* ]] || [[ $url == *"youtu.be"* ]] || \
       [[ $url == *"instagram.com"* ]] || [[ $url == *"tiktok.com"* ]]; then
        ~/rciterminal.sh "$url"
    fi
done
EOF
        chmod +x "$bin_dir/termux-url-opener"
        echo -e "${COLORS[GREEN]}✅ URL açıcı yaradıldı${COLORS[RESET]}"
    fi
}

main() {
    detect_platform
    init_directories
    load_language
    create_rci_command
    create_url_opener
    
    if [[ $# -gt 0 ]]; then
        local url="$1"
        echo -e "${COLORS[GREEN]}📥 URL qəbul edildi: $url${COLORS[RESET]}"
        platform_specific_download "$url" "ai"
        return
    fi
    
    while true; do
        show_header
        show_main_menu
        
        read -p "Seçim (0-9): " main_choice
        
        case $main_choice in
            1)
                read -p "${STRINGS[ENTER_URL]}: " url
                if [[ -n "$url" ]]; then
                    show_quality_menu
                    read -p "Keyfiyyət seçin (0-9): " quality_choice
                    
                    case $quality_choice in
                        1) platform_specific_download "$url" "mp3_128" ;;
                        2) platform_specific_download "$url" "mp3_320" ;;
                        3) platform_specific_download "$url" "480" ;;
                        4) platform_specific_download "$url" "720" ;;
                        5) platform_specific_download "$url" "1080" ;;
                        6) platform_specific_download "$url" "2k" ;;
                        7) platform_specific_download "$url" "4k" ;;
                        8) platform_specific_download "$url" "best" ;;
                        9) platform_specific_download "$url" "ai" ;;
                        0) continue ;;
                        *) echo -e "${COLORS[RED]}❌ ${STRINGS[INVALID_OPTION]}!${COLORS[RESET]}" ;;
                    esac
                else
                    echo -e "${COLORS[RED]}❌ ${STRINGS[INVALID_URL]}!${COLORS[RESET]}"
                fi
                ;;
            2)
                read -p "${STRINGS[ENTER_URL]}: " url
                platform_specific_download "$url" "mp3_320"
                ;;
            3)
                read -p "${STRINGS[ENTER_URL]}: " url
                platform_specific_download "$url" "1080"
                ;;
            4)
                read -p "${STRINGS[ENTER_URL]}: " url
                platform_specific_download "$url" "best"
                ;;
            5)
                echo -e "${COLORS[CYAN]}🔗 Hər sətirdə bir URL (bitdikdə boş sətir):${COLORS[RESET]}"
                local urls=()
                while IFS= read -r line; do
                    [[ -z "$line" ]] && break
                    urls+=("$line")
                done
                
                for url in "${urls[@]}"; do
                    platform_specific_download "$url" "ai"
                done
                ;;
            6) speed_test ;;
            7) select_language ;;
            8) check_updates ;;
            9) system_info ;;
            0)
                echo -e "${COLORS[GREEN]}👋 ${STRINGS[GOODBYE]}${COLORS[RESET]}"
                exit 0
                ;;
            *)
                echo -e "${COLORS[RED]}❌ ${STRINGS[INVALID_OPTION]}!${COLORS[RESET]}"
                ;;
        esac
        
        echo
        read -n 1 -s -r -p "${STRINGS[PRESS_CONTINUE]}..."
    done
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi
