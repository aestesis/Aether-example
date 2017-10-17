swift package edit Uridium
cd Packages/Uridium
git remote set-url origin git@github.com:aestesis/Uridium.git
git branch temp
git checkout master
git merge temp
cd ../..

swift package edit Aether
cd Packages/Aether
git remote set-url origin git@github.com:aestesis/Aether.git
git branch temp
git checkout master
git merge temp
cd ../..
