#!/bin/bash

cd $HOME
git clone https://github.com/WaRtrO89/francinette-image.git
cd $HOME/francinette-image
chmod +x run.sh
docker build -t francinette-image $HOME/francinette-image

RC_FILE="$HOME/.zshrc"

if ! grep "francinette-image" "$RC_FILE" &> /dev/null; then
printf "\nif ! systemctl status docker | grep "running" &> /dev/null; then" "$HOME" >> "$RC_FILE"
printf "\n\t\techo \"[Francinette] Starting Docker...\"" "$HOME" >> "$RC_FILE"
printf "\n\t\tsleep 1" "$HOME" >> "$RC_FILE"
printf "\n\t\texec \"$SHELL\"" "$HOME" >> "$RC_FILE"
printf "\nfi" "$HOME" >> "$RC_FILE"

printf "\nif ! docker image ls | grep "francinette-image" &> /dev/null; then" "$HOME" >> "$RC_FILE"
printf "\n\t\techo \"[Francinette] Loading the docker container\"" "$HOME" >> "$RC_FILE"
printf "\n\t\tdocker load < %s/francinette-image/francinette.tar" "$HOME" >> "$RC_FILE"
printf "\n\t\texec \"$SHELL\"" "$HOME" >> "$RC_FILE"
printf "\nfi" "$HOME" >> "$RC_FILE"

printf "\nif ! docker ps | grep \"francinette-image\" &> /dev/null; then" "$HOME" >> "$RC_FILE"
printf "\n\tif docker run -d -i -v /home:/home -t --name run-paco francinette-image /bin/bash 2>&1 | grep \"already\" &> /dev/null; then" "$HOME" >> "$RC_FILE"
printf "\n\t\tdocker start run-paco" "$HOME" >> "$RC_FILE"
printf "\n\tfi" "$HOME" >> "$RC_FILE"
printf "\nfi" "$HOME" >> "$RC_FILE"
fi

if ! grep "francinette=" "$RC_FILE" &> /dev/null; then
	printf "\nalias francinette=%s/francinette-image/run.sh\n" "$HOME" >> "$RC_FILE"
fi

if ! grep "paco=" "$RC_FILE" &> /dev/null; then
	printf "\nalias paco=%s/francinette-image/run.sh\n" "$HOME" >> "$RC_FILE"
fi

docker image save francinette-image > francinette.tar

exec "$SHELL"

echo "Installation complete!"
echo "Use the `paco` or `francinette` commands in your project folder."
