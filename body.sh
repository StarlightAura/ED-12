#!/usr/bin/bash

cat << EOF
    <body>
EOF
./nav.sh "$1"
cat << EOF
        <h1>Ejemplo de página $2</h1>
        <p>Esta es la página $2.</p>
EOF
