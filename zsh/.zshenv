# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD="zcda-kipz-kuhh-pbah"
ZSH_THEME="theone"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

echo -e "\e[1;49;33m                                                      ,@.
                             @@                       @@%.
                            .@@@                    .&@@%.
                            @@@@(                   @@@@&@
    #                      @@@@@@@.                @@@&@@@
    @@(                   /@@%/@@@@.              @@/&@&@@
    @@@@&                 @@@  /(@@@&           (@@@#(/(@#
    @@@@@@%              @@@/    (@@@@.        %@@&(/   @@.
    @@@@@@@@/          .@@@%       &@@@(      @@@%(     @@%
    @@@% %@@@@&        @@@&         (@@@@.  /@@@#/    //@@@
    @@@&   &@@@@@     @@@@           /@@@@ %@@&(      ((@@%
    @@@@     %@@@@@%.(@@@/            /@@@@@@%/        (@@@
    (@@@       (@@@@@@@@&              /@@@@%/        /(@@#
    (@@@         (@@@@@@/                \%(           (@@
     @@@           %@@@#                  \@           #@@@
     @@@            \@/                                 (@@@
      @@                                              /&@@%
      @@                                               &@@(
      (@                           (#%&@&&@@@@@@@@@@@@@@@@@
      %@                 #@@@@@@@@@@@@@@@@@@@@@@@(#.
      %@&&&(((&@@@@@@@@@#%@@#%
      &@@%%&"
echo -e "\e[2;49;37m
     __       __)                         ______
    (, )  |  /      /)                   (, /    )       /)
       | /| /   _  // _  ______    _       /---(  _   _ (/_
       |/ |/  _(/_(/_(__(_) // (__(/_   ) / ____)(_(_(__/(__
       /  |                            (_/ (                 /
                              _
                         ___/__)    ,
                        (, /          _
                          /   (_(__(_/_)_
                         (_____
"
######################
# misc exports
#######################
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$PATH:$HOME/miniconda3/bin"
export GOPATH=$HOME/go
export PATH=$PATH:~/flutter/bin
export PATH="$PATH":"$GOPATH/bin"
export PATH=$PATH:~/.pub-cache/bin
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export EC2_USER="ubuntu"
export EC2_KEYFILE_PATH=~/.ssh/luisgomez.pem
export EC2_INSTANCE_ID=$(cat ~/secrets/EC2_INSTANCE_ID)
export VIM_RUNTIME=$HOME/.config/nvim/.vim_runtime

###############
# stupid shit #
###############
alias bbbbbrrrrrrraaaaaammmmmmp='mpv ~/sounds/inception.mp3 &>/dev/null'
alias bruh='mpv ~/sounds/bruh.mp3 &> /dev/null'
alias airhorn='mpv ~/sounds/airhorn.mp3 &> /dev/null'
alias airhorns='mpv ~/sounds/airhorns.mp3 &>/dev/null'

#############################
# slightly less stupid shit #
#############################
alias vim=nvim
alias r="/usr/local/bin/R"
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias clip="pbcopy"
alias nyan="docker run -it supertest2014/nyan"
alias dl="echo $DRYDOCK_PASS | docker login --username luis.gomez@workiva.com --password-stdin drydock.workiva.net"
alias dl-prod= "echo $DRYDOCK_PROD_PASS | docker login --username luis.gomez@workiva.com --password-stdin drydock-prod.workiva.net"
alias dl-reg= "docker login -u $DOCKER_UNAME --password $DRYDOCK_PASS"
alias e="open $*"
alias wgo="cd /Users/luisgomez/go/src/github.com/Workiva"
alias cpwd="pwd | pbcopy"
alias insomnia="open -a /Applications/Insomnia.app"
alias wk="cd ~/workspaces/wf/admin_client/ && idea . && dartium & disown"
alias mm="cd ~/Documents/code/mood_mobile && idea . && react-native run-ios"
alias mma="cd ~/Documents/code/mood_mobile && idea . && react-native run-android && avd & disown"
alias mm_local="cd ~/Documents/code/mood_api && idea . & mm"
alias mm_local_android="cd ~/Documents/code/mood_api && idea . & mma"
alias avd="~/Library/Android/sdk/emulator/emulator -avd Pixel_2_API_28 -netdelay none -netspeed full"
alias mma="cd ~/Documents/code/mood_mobile && idea . && avd & disown && react-native run-android"
alias firefox="open -a /Applications/Firefox.app"
alias yt="/Users/luisgomez/miniconda3/envs/yt/bin/python /Users/luisgomez/miniconda3/envs/yt/bin/mpsyt"
alias bfg="java -jar /Applications/bfg-1.13.0.jar $*"
alias jshell="~/jdk-12.jdk/Home/bin/jshell"
alias idea="open -a /Applications/IntelliJ\ IDEA.app"
alias gitlog="git log --oneline"
alias gitlit="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias  ngrok=~/ngrok

#################################################
# DART STUFF                                    #
#################################################
# Path to Dart 2 executables
export DART_2_PATH='/Users/luisgomez/.asdf/installs/dart/2.4.0/dart-sdk/bin'
# Or, if you have an old install of Dart 1 that didn't use dart@1:
# export DART_2_PATH=/usr/local/Cellar/dart/2.1.0/bin/

# The Dart SDK version you wish to solve under
export CURRENT_DART_VERSION=1.24.3

# Runs `pub get` in Dart 2 using the current Dart version as SDK constraints,
# and then runs `pub get` in Dart 1 to get the lock file in a good state.
#
# `--no-precompile` is important here so that Pub doesn't try
# and fail to compile Dart 1 executables under Dart 2.
#
# Unlike an alias (in Bash), this function also passes any
# additional arguments along to `pub`.
function pub2get() {
  _PUB_TEST_SDK_VERSION="$CURRENT_DART_VERSION" "$DART_2_PATH/pub" get --no-precompile "$@" && pub get --offline "$@"
}

function pub2upgrade() {
  _PUB_TEST_SDK_VERSION="$CURRENT_DART_VERSION" "$DART_2_PATH/pub" upgrade --no-precompile "$@" && pub get --offline "$@"
}

alias dwr="pub run w_webdriver_utils:wd_runner"
alias pubclean='rm -r .pub .dart_tool/pub && echo "Removed .pub/"; find . -name packages | xargs rm -rf && echo "Removed packages/"; rm .packages && echo "Removed .packages"; pubcleanlock'
alias repub='pubclean; pub get'
alias repub2='pubclean; pub2get'
alias dartium='export DARTIUM_EXPIRATION_TIME=1577836800; DART_FLAGS="--checked --load_deferred_eagerly" open /usr/local/opt/dart@1/Chromium.app'
alias dartium_unsafe='export DARTIUM_EXPIRATION_TIME=1577836800; DART_FLAGS="--checked --load_deferred_eagerly" /usr/local/opt/dart@1/Chromium.app/Contents/MacOS/Chromium --user-data-dir=~/.dartiumtmp --disable-web-security'
alias ddev='pub run dart_dev'
alias ddev_local='IAM_HOST=http://localhost:8001 MSG_FRONTEND_URL=http://localhost:8100 ddev serve'
alias pubcleanlock='rm pubspec.lock && echo "Removed pubspec.lock"'
alias wac="dartium & disown && wgo && cd doc_plat_client && make serve-dartium"

function d1() {
  asdf global dart 1.24.3
}

function d2() {
  asdf global dart 2.4.0
}


####################
# Helper Functions #
####################

# Starts the ec2 instance.
# Requires aws cli (you'll need a keypair in AWS IAM console if you don't already have one)
# Requires default region to be set in ~/.aws/config
function start_ec2() {
        echo "starting ec2 instance if not already started..."
        aws ec2 start-instances --instance-id $EC2_INSTANCE_ID
        echo "Instance starting, waiting for running state..."
        aws ec2 wait instance-running --instance-id $EC2_INSTANCE_ID
        echo "Instance started!"
}

function run_local_messaging() {
  gnatsd &
  cd $GOPATH/src/github.com/Workiva/messaging-frontend
  go install
  IAM_UNSAFE=true messaging-frontend -dev-mode
}

function support_viewer_local() {
  cd /Users/luisgomez/workspaces/wf/support_tool_dart && pub serve web & disown
  run_local_messaging & disown
  dartium_unsafe & disown
}

# Updates your ec2 public dns in the local environment, starting the container if needed
# Requires aws configure settings [output format]=json and [default region]=<your ec2 region>
# Also requires the jq cli tool to parse json (`brew install jq`)
function update_ec2_address() {
    start_ec2
    # echo "aws describe instances returns: "
    # aws ec2 describe-instances --instance-id $EC2_INSTANCE_ID
    export EC2_INSTANCE=`aws ec2 describe-instances --instance-id $EC2_INSTANCE_ID | jq -r '.Reservations[].Instances[].PublicDnsName'`
    echo "set dns to $EC2_INSTANCE"
    echo "sleeping for one second to allow the ssh service to start..."
    sleep 1
}

function tunnel_ec2() {
 echo "Connecting to EC2 instance and setting up SSH..."
 ssh -i ${EC2_KEYFILE_PATH} -X -t -p 22 ${EC2_USER}@$EC2_INSTANCE -L 4222:localhost:4222 -L 8100:localhost:8100 -L 3306:localhost:3306 -L 8000:localhost:8000 -L 8001:localhost:8001 -L 8888:localhost:8888 -L 3307:localhost:3307 -L 3308:localhost:3308 -L 9090:localhost:9090 -L 9999:localhost:9999 -L 8090:localhost:80
}

function tunnel_ec2_admin_service() {
    # don't tunnel into 9999 so i can run admin service locally from idea
  echo "Connecting to EC2 instance and setting up SSH..."
  ssh -i ${EC2_KEYFILE_PATH} -X -t -p 22 ${EC2_USER}@$EC2_INSTANCE -L 4222:localhost:4222 -L 8100:localhost:8100 -L 3306:localhost:3306 -L 8000:localhost:8000 -L 8001:localhost:8001 -L 8888:localhost:8888 -L 3307:localhost:3307 -L 3308:localhost:3308 -L 9090:localhost:9090 -L 8090:localhost:80
}

function connect_ec2() {
  # does not tunnel port for admin service
  echo "Connecting to EC2 instance..."
  ssh -i ~/.ssh/luisgomez.pem ${EC2_USER}@${EC2_INSTANCE}
}

function tunnel_ec2_cpl() {
  echo "Connecting to EC2 instance and setting up SSH..."
  ssh -i ${EC2_KEYFILE_PATH} -X -t -p 22 ${EC2_USER}@$EC2_INSTANCE -L 3307:localhost:3307 -L 8888:localhost:8888 -L 16686:localhost:16686 -L 9411:localhost:9411 -L 8222:localhost:8222 -L 9090:localhost:9090 -L 5778:localhost:5778 -L 4222:localhost:4222 -L 8100:localhost:8100 -L 9080:localhost:9080 -L 9000:localhost:9000 -L 1041:localhost:1041 -L 8123:localhost:8123 -L 1040:localhost:1040
}

# Change git identity in a local directory 
# ex: changessh home
function changessh() {
  eval "$(ssh-agent -s)"
  if [ "$1" = "home" ]; then
    ssh-add ~/.ssh/id_rsa_whoislewys
    git config --local user.email whoislewys@gmail.com
    git config user.name "whoislewys" --replace-all
elif [ "$1" = "work" ]; then
    ssh-add ~/.ssh/id_rsa
    git config --local user.email luis.gomez@workiva.com
    git config user.name "Luis Gomez" --replace-all
  fi;
}

function podclean() {
  rm -rf "${HOME}/Library/Caches/CocoaPods"
  rm -rf "`pwd`/Pods/"
  rm -f "`pwd`/Podfile.lock"
  pod update
}

# clean a react native project
# usage: react-native-clean
# or: react-native-clean deep
# `deep` arg will clean yarn cache
function react-native-clean() {
  echo "removing node modules..."
  rm -rf node_modules
  echo "clearing tmpdirs..."
  rm -rf $TMPDIR/react-*
  rm -rf $TMPDIR/npm-*
  watchman watch-del-all
  echo "removing ios & android build folders..."
  rm -rf ios/build
  rm -rf android/app/build
  echo "reinstalling node modules"
  yarn
  react-native link
  echo "resetting yarn cache"
  echo "use ctrl+c to kill this server once it gives you the \"Done\" message"
  yarn start --reset-cache
  if [ "$1" = "deep" ]; then
    echo "clearing yarn cache..."
    yarn cache clean
  fi
}

# download a workiva repo
function wclone () {
  git clone git@github.com:Workiva/$1
}

# view a csv from the command line
function catcsv() { 
  echo "$1"
  cat "$1" | sed 's/,,/,[:space:],/g' | column -s, -tx | less -N -S
}

function cddev() {
	case `uname` in
		Darwin)
			cd ~/dev
			;;
		*)
			cd /mnt/c/Users/whois/dev
			;;
	esac
}

function cdconfig() {
	case `uname` in
		Darwin)
			cd ~/dev/config
			;;
		*)
			cd /mnt/c/Users/whois/dev/config
			;;
	esac
}

function update_config() {
  cdconfig
  cp ~/.zshenv zsh/.zshenv
}

############################
# Workiva onboarding-tools #
############################
export PATH="$PATH:$HOME/onboarding-tools/bin"
export ARTIFACTORY_PRO_USER=$(cat ~/secrets/ARTIFACTORY_PRO_USER)
export ARTIFACTORY_PRO_PASS=$(cat ~/secrets/ARTIFACTORY_PRO_PASS)
export ARTIFACTORY_PRO_BACKUP_PASS=$(cat ~/secrets/ARTIFACTORY_PRO_BACKUP_PASS)
# wk docker setup
alias dc=docker-compose
export PATH="$PATH:/usr/local/bin/VBoxManage"
export DOCKER_UNAME=$(cat ~/secrets/DOCKER_UNAME)
export DRYDOCK_PASS=$(cat ~/secrets/drydock_pass)
export DRYDOCK_PROD_PASS=$(cat ~/secrets/drydock_prod_pass)
# Wk signals tests
export TEST_URL=$(cat ~/secrets/ATTACHMENT_CLIENT_SIGS_TEST_URL)
export TEST_USERNAME=$(cat ~/secrets/ATTACHMENT_CLIENT_SIGS_TEST_USERNAME)
export TEST_PASSWORD=$(cat ~/secrets/ATTACHMENT_CLIENT_SIGS_TEST_PASSWORD)
alias rancher=/Users/luisgomez/rancher/rancher

#############
# Misc      #
#############
# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Make ASDF ruby gets discovered earlier than mac built in ruby
export PATH="/Users/luisgomez/.asdf/shims/ruby:$PATH"
