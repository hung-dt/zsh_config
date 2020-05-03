###
# Functions
###

# make a directory and cd into it
mcd() { mkdir -p "$1"; cd "$1"; }

# Add timestamp for output
# Usage: command | addts
function addts()
{
    while IFS= read -r line; do
        echo "[$(date +%Y-%m-%d\ %H:%M:%S)] $line"
    done
}


# Extract compressed/archived files
function extract()
{
    if [[ "$1" == "" ]]; then
        echo "Usage: extract [file ...]"
        echo
    fi

    local success
    local file_name
    local extract_dir

    while [[ -n "$1" ]]; do
        if [[ ! -f "$1" ]]; then
            echo "WARNING: '$1' is not a valid file!"
            shift
            continue
        fi

        success=0
        file_name="$(basename "$1")"
        extract_dir="$( echo "$file_name" | sed "s/\.${1##*.}//g" )"
        case "$1" in
            (*.tar.gz|*.tgz) tar xvzf "$1" ;;
            (*.tar.bz2|*.tbz|*.tbz2) tar xvjf "$1" ;;
            (*.tar.xz|*.txz) tar --xz --help &> /dev/null \
                && tar --xz -xvf "$1" \
                || xzcat "$1" | tar xvf - ;;
            (*.tar.zma|*.tlz) tar --lzma --help &> /dev/null \
                && tar --lzma -xvf "$1" \
                || lzcat "$1" | tar xvf - ;;
            (*.tar) tar xvf "$1" ;;
            (*.gz) gunzip "$1" ;;
            (*.bz2) bunzip2 "$1" ;;
            (*.xz) unxz "$1" ;;
            (*.lzma) unlzma "$1" ;;
            (*.Z) uncompress "$1" ;;
            (*.zip) unzip "$1" -d $extract_dir ;;
            (*.rar) unrar e -ad "$1" ;;
            (*.7z) 7za x "$1" ;;
            (*.deb)
                mkdir -p "$extract_dir/control"
                mkdir -p "$extract_dir/data"
                cd "$extract_dir"; ar vx "../${1}" > /dev/null
                cd control; tar xzvf ../control.tar.gz
                cd ../data; tar xzvf ../data.tar.gz
                cd ..; rm *.tar.gz debian-binary
                cd ..
                ;;
            (*)
                echo "ERROR: '$1' cannot be extracted" 1>&2
                success=1
                ;;
        esac

        (( success = $success > 0 ? $success : $? ))
        shift
    done

    return $success
}

function any()
{
    emulate -L zsh
    unsetopt KSH_ARRAYS
    if [[ -z "$1" ]] ; then
        echo "any - grep for process(es) by keyword" >&2
        echo "Usage: any <proc_name>" >&2 ; return 1
    else
        ps xauwww | grep -i --color=auto "[${1[1]}]${1[2,-1]}"
    fi
}

function ppath()
{
  echo $PATH | tr ":" "\n" | \
    awk "{ sub(\"/usr\",   \"$fg_no_bold[green]/usr$reset_color\"); \
           sub(\"/bin\",   \"$fg_no_bold[blue]/bin$reset_color\"); \
           sub(\"/opt\",   \"$fg_no_bold[cyan]/opt$reset_color\"); \
           sub(\"/sbin\",  \"$fg_no_bold[magenta]/sbin$reset_color\"); \
           sub(\"/local\", \"$fg_no_bold[yellow]/local$reset_color\"); \
           print }"
}

