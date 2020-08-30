echo "Getting preparing..."
apt update & apt upgrade > /dev/null
apt install wget -y > /dev/null

echo "Downloading Erlang package..."
PKG_NAME='erlang-solutions_1.0_all.deb'
dpkg -i $PKG_NAME > /dev/null
wget "https://packages.erlang-solutions.com/"$PKG_NAME

echo "Installing Erlang..."
apt update > /dev/null
apt install erlang -y > /dev/null

echo "Installing Elixir..."
apt install elixir -y > /dev/null

echo "Validating..."
erlc test.erl
erl -noshell -s test start -s init stop

echo "Done!"



