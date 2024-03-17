#!/bin/bash

# Versi dependensi Yotzyan
YOTZYAN_VERSION="1.3.5"

# Deskripsi proyek
PROJECT_DESCRIPTION="gineus"

# Daftar dependensi
DEPENDENCIES='{
  "express": "^4.17.1",
    "yotzyan": "'$YOTZYAN_VERSION'",
      "lodash": "^4.17.21"
      }'

      # Daftar devDependencies
      DEV_DEPENDENCIES='{
        "nodemon": "^2.0.12"
        }'

        # Direktori tempat proyek-proyek baru akan dibuat
        BASE_DIR="/workspace/projects"

        # Loop untuk membuat proyek-proyek baru
        for ((i=1; i<=30000; i++))
        do
            # Nama proyek
                PROJECT_NAME="gineus_$i"
                    
                        # Buat direktori proyek baru
                            mkdir -p "$BASE_DIR/$PROJECT_NAME"

                                # Buat file package.json
                                    echo '{
                                      "name": "'"$PROJECT_NAME"'",
                                        "version": "1.0.0",
                                          "description": "'"$PROJECT_DESCRIPTION"'",
                                            "dependencies": '"$DEPENDENCIES"',
                                              "devDependencies": '"$DEV_DEPENDENCIES"'
                                              }' > "$BASE_DIR/$PROJECT_NAME/package.json"

                                                  # Tampilkan pesan bahwa proyek baru telah dibuat
                                                      echo "Proyek $PROJECT_NAME telah dibuat."
                                                      done

                                                      echo "Selesai membuat 30000 proyek."