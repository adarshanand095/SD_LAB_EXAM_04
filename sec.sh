count=0;
p_count=0;
while IFS= read -r line; do
    if (( $count >= 4 && count <= 8))
    then
        if [[ $(rev <<< "$line") == "$line" ]]; then
            ((p_count++));
        fi
    fi
done < demo.txt
echo "Number of palindrome $p_count";