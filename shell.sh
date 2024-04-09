#/bin/bash/

for file in ~/aws-private-cloud-infra/*; do
	    if [ -f "$file" ]; then
		            echo "$(basename "$file")"
			        fi
			done

