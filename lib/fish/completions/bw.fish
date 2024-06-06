# Defines autocompletion for Bitwarden CLI

# Copyright (c) 2024 Michael Krebs
# MIT License (MIT)
# https://github.com/m-krebs

if not type -q bw
  exit 0
end


# function _bw {
#   case $state in
#     cmnds)
#       commands=(
#         "generate:Generate a password/passphrase."
#         "encode:Base 64 encode stdin."
#         "config:Configure CLI settings."
#         "update:Check for updates."
#         "completion:Generate shell completions."
#         "status:Show server, last sync, user information, and vault status."
#         "serve:Start a RESTful API webserver."
#         "list:List an array of objects from the vault."
#         "get:Get an object from the vault."
#         "create:Create an object in the vault."
#         "edit:Edit an object from the vault."
#         "delete:Delete an object from the vault."
#         "restore:Restores an object from the trash."
#         "move:Move an item to an organization."
#         "confirm:Confirm an object to the organization."
#         "import:Import vault data from a file."
#         "export:Export vault data to a CSV or JSON file."
#         "share:--DEPRECATED-- Move an item to an organization."
#         "send:Work with Bitwarden sends. A Send can be quickly created using this command or subcommands can be used to fine-tune the Send"
#         "receive:Access a Bitwarden Send from a url"
#       )
#       _describe "command" commands
#       ;;
#   esac
#
#   case "$words[1]" in
#     login)
#       _bw_login
#       ;;
#     logout)
#       _bw_logout
#       ;;
#     lock)
#       _bw_lock
#       ;;
#     unlock)
#       _bw_unlock
#       ;;
#     sync)
#       _bw_sync
#       ;;
#     generate)
#       _bw_generate
#       ;;
#     encode)
#       _bw_encode
#       ;;
#     config)
#       _bw_config
#       ;;
#     update)
#       _bw_update
#       ;;
#     completion)
#       _bw_completion
#       ;;
#     status)
#       _bw_status
#       ;;
#     serve)
#       _bw_serve
#       ;;
#     list)
#       _bw_list
#       ;;
#     get)
#       _bw_get
#       ;;
#     create)
#       _bw_create
#       ;;
#     edit)
#       _bw_edit
#       ;;
#     delete)
#       _bw_delete
#       ;;
#     restore)
#       _bw_restore
#       ;;
#     move)
#       _bw_move
#       ;;
#     confirm)
#       _bw_confirm
#       ;;
#     import)
#       _bw_import
#       ;;
#     export)
#       _bw_export
#       ;;
#     share)
#       _bw_share
#       ;;
#     send)
#       _bw_send
#       ;;
#     receive)
#       _bw_receive
#       ;;
#   esac
# }
#
# function _bw_login {
#   _arguments -C \
#     '--method[Two-step login method.]' \
#     '--code[Two-step login code.]' \
#     '--sso[Log in with Single-Sign On.]' \
#     '--apikey[Log in with an Api Key.]' \
#     '--passwordenv[Environment variable storing your password]' \
#     '--passwordfile[Path to a file containing your password as its first line]' \
#     '--check[Check login status.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_logout {
#   
# }
#
# function _bw_lock {
#   
# }
#
# function _bw_unlock {
#   _arguments -C \
#     '--check[Check lock status.]' \
#     '--passwordenv[Environment variable storing your password]' \
#     '--passwordfile[Path to a file containing your password as its first line]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_sync {
#   _arguments -C \
#     '(-f --force)'{-f,--force}'[Force a full sync.]' \
#     '--last[Get the last sync date.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_generate {
#   _arguments -C \
#     '(-u --uppercase)'{-u,--uppercase}'[Include uppercase characters.]' \
#     '(-l --lowercase)'{-l,--lowercase}'[Include lowercase characters.]' \
#     '(-n --number)'{-n,--number}'[Include numeric characters.]' \
#     '(-s --special)'{-s,--special}'[Include special characters.]' \
#     '(-p --passphrase)'{-p,--passphrase}'[Generate a passphrase.]' \
#     '--length[Length of the password.]' \
#     '--words[Number of words.]' \
#     '--minNumber[Minimum number of numeric characters.]' \
#     '--minSpecial[Minimum number of special characters.]' \
#     '--separator[Word separator.]' \
#     '(-c --capitalize)'{-c,--capitalize}'[Title case passphrase.]' \
#     '--includeNumber[Passphrase includes number.]' \
#     '--ambiguous[Avoid ambiguous characters.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_encode {
#   
# }
#
# function _bw_config {
#   _arguments -C \
#     '--web-vault[Provides a custom web vault URL that differs from the base URL.]' \
#     '--api[Provides a custom API URL that differs from the base URL.]' \
#     '--identity[Provides a custom identity URL that differs from the base URL.]' \
#     '--icons[Provides a custom icons service URL that differs from the base URL.]' \
#     '--notifications[Provides a custom notifications URL that differs from the base URL.]' \
#     '--events[Provides a custom events URL that differs from the base URL.]' \
#     '--key-connector[Provides the URL for your Key Connector server.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_update {
#   
# }
#
# function _bw_completion {
#   _arguments -C \
#     '--shell[Shell to generate completions for.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_status {
#   
# }
#
# function _bw_serve {
#   _arguments -C \
#     '--hostname[The hostname to bind your API webserver to.]' \
#     '--port[The port to run your API webserver on.]' \
#     '--disable-origin-protection[If set, allows requests with origin header. Warning, this option exists for backwards compatibility reasons and exposes your environment to known CSRF attacks.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_list {
#   _arguments -C \
#     '--search[Perform a search on the listed objects.]' \
#     '--url[Filter items of type login with a url-match search.]' \
#     '--folderid[Filter items by folder id.]' \
#     '--collectionid[Filter items by collection id.]' \
#     '--organizationid[Filter items or collections by organization id.]' \
#     '--trash[Filter items that are deleted and in the trash.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_get {
#   _arguments -C \
#     '--itemid[Attachment'"'"'s item id.]' \
#     '--output[Output directory or filename for attachment.]' \
#     '--organizationid[Organization id for an organization object.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_create {
#   _arguments -C \
#     '--file[Path to file for attachment.]' \
#     '--itemid[Attachment'"'"'s item id.]' \
#     '--organizationid[Organization id for an organization object.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_edit {
#   _arguments -C \
#     '--organizationid[Organization id for an organization object.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_delete {
#   _arguments -C \
#     '--itemid[Attachment'"'"'s item id.]' \
#     '--organizationid[Organization id for an organization object.]' \
#     '(-p --permanent)'{-p,--permanent}'[Permanently deletes the item instead of soft-deleting it (item only).]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_restore {
#   
# }
#
# function _bw_move {
#   
# }
#
# function _bw_confirm {
#   _arguments -C \
#     '--organizationid[Organization id for an organization object.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_import {
#   _arguments -C \
#     '--formats[List formats]' \
#     '--organizationid[ID of the organization to import to.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_export {
#   _arguments -C \
#     '--output[Output directory or filename.]' \
#     '--format[Export file format.]' \
#     '--password[Use password to encrypt instead of your Bitwarden account encryption key. Only applies to the encrypted_json format.]' \
#     '--organizationid[Organization id for an organization.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_share {
#   
# }
#
# function _bw_send {
#   local -a commands
#
#   _arguments -C \
#     '(-f --file)'{-f,--file}'[Specifies that <data> is a filepath]' \
#     '(-d --deleteInDays)'{-d,--deleteInDays}'[The number of days in the future to set deletion date, defaults to 7]' \
#     '(-a --maxAccessCount)'{-a,--maxAccessCount}'[The amount of max possible accesses.]' \
#     '--hidden[Hide <data> in web by default. Valid only if --file is not set.]' \
#     '(-n --name)'{-n,--name}'[The name of the Send. Defaults to a guid for text Sends and the filename for files.]' \
#     '--notes[Notes to add to the Send.]' \
#     '--fullObject[Specifies that the full Send object should be returned rather than just the access url.]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "1: :->cmnds" \
#     "*::arg:->args"
#
#   case $state in
#     cmnds)
#       commands=(
#         "list:List all the Sends owned by you"
#         "template:Get json templates for send objects"
#         "get:Get Sends owned by you."
#         "receive:Access a Bitwarden Send from a url"
#         "create:create a Send"
#         "edit:edit a Send"
#         "remove-password:removes the saved password from a Send."
#         "delete:delete a Send"
#       )
#       _describe "command" commands
#       ;;
#   esac
#
#   case "$words[1]" in
#     list)
#       _bw_send_list
#       ;;
#     template)
#       _bw_send_template
#       ;;
#     get)
#       _bw_send_get
#       ;;
#     receive)
#       _bw_send_receive
#       ;;
#     create)
#       _bw_send_create
#       ;;
#     edit)
#       _bw_send_edit
#       ;;
#     remove-password)
#       _bw_send_remove-password
#       ;;
#     delete)
#       _bw_send_delete
#       ;;
#   esac
# }
#
# function _bw_send_list {
#   
# }
#
# function _bw_send_template {
#   
# }
#
# function _bw_send_get {
#   _arguments -C \
#     '--output[Output directory or filename for attachment.]' \
#     '--text[Specifies to return the text content of a Send]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_send_receive {
#   _arguments -C \
#     '--password[Password needed to access the Send.]' \
#     '--passwordenv[Environment variable storing the Send'"'"'s password]' \
#     '--passwordfile[Path to a file containing the Sends password as its first line]' \
#     '--obj[Return the Send'"'"'s json object rather than the Send's content]' \
#     '--output[Specify a file path to save a File-type Send to]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_send_create {
#   _arguments -C \
#     '--file[file to Send. Can also be specified in parent'"'"'s JSON.]' \
#     '--text[text to Send. Can also be specified in parent'"'"'s JSON.]' \
#     '--hidden[text hidden flag. Valid only with the --text option.]' \
#     '--password[optional password to access this Send. Can also be specified in JSON]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_send_edit {
#   _arguments -C \
#     '--itemid[Overrides the itemId provided in [encodedJson]]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }
#
# function _bw_send_remove-password {
#   
# }
#
# function _bw_send_delete {
#   
# }
#
# function _bw_receive {
#   _arguments -C \
#     '--password[Password needed to access the Send.]' \
#     '--passwordenv[Environment variable storing the Send'"'"'s password]' \
#     '--passwordfile[Path to a file containing the Sends password as its first line]' \
#     '--obj[Return the Send'"'"'s json object rather than the Send's content]' \
#     '--output[Specify a file path to save a File-type Send to]' \
#     '(-h --help)'{-h,--help}'[output usage information]' \
#     "*::arg:->args"
# }

function __fish_bw_no_command
    set cmd (commandline -opc)

    if [ (count $cmd) -eq 1 ]
        return 0
    end
    return 1
end

# Test if the main command matches one of the parameters
function __fish_bw_using_command
    set cmd (commandline -opc)

    if [ (count $cmd) -eq 2 ]
        if contains $cmd[2] $argv
            return 0
        end
    end
    return 1
end

# complete -c bw -n "not __fish_seen_subcommand_from $commands" \
#     -a "$commands"

### arguments
complete -x -c bw -n __fish_bw_no_command -l cleanexit -d 'Exit with a success exit code (0) unless an error is thrown'
complete -x -c bw -n __fish_bw_no_command -l help -s h -d 'output usage information'
complete -x -c bw -n __fish_bw_no_command -l nointeraction -d 'Do not prompt for interactive user input'
complete -x -c bw -n __fish_bw_no_command -l pretty -d 'Format output. JSON is tabbed with two spaces'
complete -x -c bw -n __fish_bw_no_command -l quiet -d 'Don\'t return anything to stdout'
complete -x -c bw -n __fish_bw_no_command -l raw -d 'Return raw output instead of a descriptive message'
complete -x -c bw -n __fish_bw_no_command -l response -d 'Return a JSON formatted version of response output'
complete -x -c bw -n __fish_bw_no_command -l session -d 'Pass session key instead of reading from env'
complete -x -c bw -n __fish_bw_no_command -l version -s v -d 'output the version number'


### login
complete -c bw -f -n __fish_bw_no_command -a login -d 'Log into a user account'
complete -c bw -f -n '__fish_seen_subcommand_from login'
complete -x -c bw -n '__fish_bw_using_command login' -l apikey -d 'Log in with an Api Key'
complete -x -c bw -n '__fish_bw_using_command login' -l check -d 'Check login status'
complete -x -c bw -n '__fish_bw_using_command login' -l code -d 'Two-step login code'
complete -x -c bw -n '__fish_bw_using_command login' -s h -l help -d 'output usage information'
complete -x -c bw -n '__fish_bw_using_command login' -l method -d 'Two-step login method'
complete -x -c bw -n '__fish_bw_using_command login' -l passwordenv -d 'Environment variable storing your password'
complete -x -c bw -n '__fish_bw_using_command login' -l passwordfile -d 'Path to a file containing your password as its first line'
complete -x -c bw -n '__fish_bw_using_command login' -l sso -d 'Log in with Single-Sign On'

### logout
complete -c bw -f -n __fish_bw_no_command -a logout -d 'Log out of the current user account'
complete -c bw -f -n '__fish_seen_subcommand_from logout'

### lock
complete -c bw -f -n __fish_bw_no_command -a lock -d 'Lock the vault and destroy active session keys'
complete -c bw -f -n '__fish_seen_subcommand_from lock'

### unlock
complete -c bw -f -n __fish_bw_no_command -a unlock -d 'Unlock the vault and return a new session key'
complete -c bw -f -n '__fish_seen_subcommand_from unlock'
complete -x -c bw -n '__fish_bw_using_command unlock' -l check -d 'Check lock status'
complete -x -c bw -n '__fish_bw_using_command unlock' -s h -l help -d 'output usage information'
complete -x -c bw -n '__fish_bw_using_command unlock' -l passwordenv -d 'Environment variable storing your password'
complete -x -c bw -n '__fish_bw_using_command unlock' -l passwordfile -d 'Path to a file containing your password as its first line'

### sync
complete -c bw -f -n __fish_bw_no_command -a sync -d 'Pull the latest vault data from server'
complete -c bw -f -n '__fish_bw_using_command sync'
complete -x -c bw -n '__fish_bw_using_command sync' -s f -l force -d 'Force a full sync'
complete -x -c bw -n '__fish_bw_using_command sync' -s h -l help -d 'output usage information'
complete -x -c bw -n '__fish_bw_using_command sync' -l last -d 'Get the last sync date'

### generate
complete -c bw -f -n __fish_bw_no_command -a generate -d 'Generate a password/passphrase'
complete -c bw -f -n '__fish_bw_using_command generate'
complete -x -c bw -n '__fish_bw_using_command generate' -l ambiguous -d 'Avoid ambiguous characters'
complete -x -c bw -n '__fish_bw_using_command generate' -l capitalize -s c -d 'Title case passphrase'
complete -x -c bw -n '__fish_bw_using_command generate' -l help -s h -d 'output usage information'
complete -x -c bw -n '__fish_bw_using_command generate' -l includeNumber -d 'Passphrase includes number'
complete -x -c bw -n '__fish_bw_using_command generate' -l length -d 'Length of the password'
complete -x -c bw -n '__fish_bw_using_command generate' -l lowercase -s l -d 'Include lowercase characters'
complete -x -c bw -n '__fish_bw_using_command generate' -l minNumber -d 'Minimum number of numeric characters'
complete -x -c bw -n '__fish_bw_using_command generate' -l minSpecial -d 'Minimum number of special characters'
complete -x -c bw -n '__fish_bw_using_command generate' -l number -s n -d 'Include numeric characters'
complete -x -c bw -n '__fish_bw_using_command generate' -l passphrase -s p -d 'Generate a passphrase'
complete -x -c bw -n '__fish_bw_using_command generate' -l separator -d 'Word separator'
complete -x -c bw -n '__fish_bw_using_command generate' -l special -s s -d 'Include special characters'
complete -x -c bw -n '__fish_bw_using_command generate' -l uppercase -s u -d 'Include uppercase characters'
complete -x -c bw -n '__fish_bw_using_command generate' -l words -d 'Number of words'

### encode
complete -c bw -f -n __fish_bw_no_command -a encode -d 'Base 64 encode stdin'

### config
complete -c bw -f -n __fish_bw_no_command -a config -d 'Configure CLI settings'
complete -c bw -f -n '__fish_bw_using_command config'
complete -x -c bw -n '__fish_bw_using_command config' -l web-vault -d 'Provides a custom web vault URL that differs from the base URL'
complete -x -c bw -n '__fish_bw_using_command config' -l api -d 'Provides a custom API URL that differs from the base URL'
complete -x -c bw -n '__fish_bw_using_command config' -l identity -d 'Provides a custom identity URL that differs from the base URL'
complete -x -c bw -n '__fish_bw_using_command config' -l icons -d 'Provides a custom icons service URL that differs from the base URL'
complete -x -c bw -n '__fish_bw_using_command config' -l notifications -d 'Provides a custom notifications URL that differs from the base URL'
complete -x -c bw -n '__fish_bw_using_command config' -l events -d 'Provides a custom events URL that differs from the base URL'
complete -x -c bw -n '__fish_bw_using_command config' -l key-connector -d 'Provides the URL for your Key Connector server'
complete -x -c bw -n '__fish_bw_using_command config' -s h -l help -d 'display help for command'

### update
complete -c bw -f -n __fish_bw_no_command -a update -d 'Check for updates'
complete -c bw -f -n '__fish_bw_using_command update'
complete -x -c bw -n '__fish_bw_using_command update' -l raw -d 'Return only the download URL for the update'

### completion
complete -c bw -f -n __fish_bw_no_command -a completion -d 'Generate shell completions'
complete -c bw -f -n '__fish_bw_using_command completion'
complete -x -c bw -n '__fish_bw_using_command completion' -s h -l help -d 'display help for command'
complete -x -c bw -n '__fish_bw_using_command completion' -l shell -d 'Shell to generate completions for'

### status
complete -c bw -f -n __fish_bw_no_command -a status -d 'Show server, last sync, user information, and vault status'
complete -c bw -f -n '__fish_seen_subcommand_from status'

### serve
complete -c bw -f -n __fish_bw_no_command -a serve -d 'Start a RESTful API webserver'
complete -c bw -f -n '__fish_seen_subcommand_from serve'
complete -x -c bw -n '__fish_bw_using_command serve' -l hostname -d 'The hostname to bind your API webserver to'
complete -x -c bw -n '__fish_bw_using_command serve' -l port -d 'The port to run your API webserver on'
complete -x -c bw -n '__fish_bw_using_command serve' -l disable-origin-protection -d 'If set, allows requests with origin header. Warning, this option exists for backwards compatibility reasons and exposes your environment to known CSRF attacks'
complete -x -c bw -n '__fish_bw_using_command serve' -s h -l help -d 'display help for command'

### list
set -l list_objects items collections folders organizations org-collections org-members organizations
complete -c bw -f -n __fish_bw_no_command -a list -d 'List an array of objects from the vault'
complete -c bw -f -n '__fish_seen_subcommand_from list' -a "$list_objects"
complete -x -c bw -n '__fish_bw_using_command list' -l search -d 'Perform a search on the listed objects'
complete -x -c bw -n '__fish_bw_using_command list' -l url -d 'Filter items of type login with a url-match search'
complete -x -c bw -n '__fish_bw_using_command list' -l folderid -d 'Filter items by folder id'
complete -x -c bw -n '__fish_bw_using_command list' -l collectionid -d 'Filter items by collection id'
complete -x -c bw -n '__fish_bw_using_command list' -l organizationid -d 'Filter items or collections by organization id'
complete -x -c bw -n '__fish_bw_using_command list' -l trash -d 'Filter items that are deleted and in the trash'
complete -x -c bw -n '__fish_bw_using_command list' -s h -l help -d 'display help for command'

### get
set -l get_objects item username password uri totp notes exposed attachment folder collection org-collection organization template fingerprint send
complete -c bw -f -n __fish_bw_no_command -a get -d 'Get an object from the vault'
complete -c bw -f -n '__fish_seen_subcommand_from get' -a "$get_objects"
complete -x -c bw -n '__fish_bw_using_command get' -l itemid -d 'Attachment\'s item id'
complete -x -c bw -n '__fish_bw_using_command get' -l output -d 'Output directory or filename for attachment'
complete -x -c bw -n '__fish_bw_using_command get' -l organizationid -d 'Organization id for an organization object'
complete -x -c bw -n '__fish_bw_using_command get' -s h -l help -d 'display help for command'

### create
complete -c bw -f -n __fish_bw_no_command -a create -d 'Create an object in the vault'
#
### edit
complete -c bw -f -n __fish_bw_no_command -a edit -d 'Edit an object from the vault'
#
### delete
complete -c bw -f -n __fish_bw_no_command -a delete -d 'Delete an object from the vault'
#
### restore
complete -c bw -f -n __fish_bw_no_command -a restore -d 'Restores an object from the trash'
#
### move
complete -c bw -f -n __fish_bw_no_command -a move -d 'Move an item to an organization'
#
### confirm
complete -c bw -f -n __fish_bw_no_command -a confirm -d 'Confirm an object to the organization'
#
### import
complete -c bw -f -n __fish_bw_no_command -a import -d 'Import vault data from a file'
#
### export
complete -c bw -f -n __fish_bw_no_command -a export -d 'Export vault data to a CSV or JSON file'
#
### share
complete -c bw -f -n __fish_bw_no_command -a share -d '--DEPRECATED-- Move an item to an organization'
#
### send
complete -c bw -f -n __fish_bw_no_command -a send -d 'Work with Bitwarden sends. A Send can be quickly created using this command or subcommands can be used to fine-tune the Send'
#
### receive
complete -c bw -f -n __fish_bw_no_command -a receive -d 'Access a Bitwarden Send from a url'
#



# set -l commands login logout lock unlock sync generate encode config update 
# completion status serve list get create edit delete restore move 
# confirm import export share send receive
