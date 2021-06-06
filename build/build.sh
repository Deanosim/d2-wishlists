echo "Build and Merge script by Deanosim"
echo "Download wishlist links from wishlist-links file."
xargs -n 1 curl -O < wishlist-links

echo "Combine all wishlists into one output.txt"
cat Season%2014%20Community%20Favs choosy_voltron.txt > input.txt

echo "Remove all duplicate lines"
awk '!a[$0]++' input.txt > output.txt

echo "cleanup"
rm Season%2014%20Community%20Favs choosy_voltron.txt
cp output.txt ../master.txt
