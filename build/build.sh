echo "Build and Merge script by Deanosim"
echo "Download wishlist links from wishlist-links file."
xargs -n 1 curl -O < wishlist-links

echo "Combine all wishlists into one output.txt"
cat choosy_voltron.txt u_Ken-as-fuck_SotL_Wishlist.txt > input.txt

echo "Remove all duplicate lines"
awk '!a[$0]++' input.txt > output.txt

echo "cleanup"
rm u_Ken-as-fuck_SotL_Wishlist.txt choosy_voltron.txt input.txt
cp output.txt ../dim-master.txt
rm output.txt
