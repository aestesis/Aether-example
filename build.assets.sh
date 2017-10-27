# no need to do it, except to update changes
# need to launch ./edit.sh first

cd Packages/Aether
./build.assets.sh
cd ../..
mv Packages/Aether/assets.aether.zip assets.aether.zip

# merge 2 zip https://superuser.com/questions/92963/how-to-combine-merge-zip-files
