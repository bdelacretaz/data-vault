# This doesn't seem to work anymore but https://delicious.com/export allows
# for exporting bookmarks in HTML with tags and notes
curl -u $1:$2 https://api.del.icio.us/v1/posts/all > delicious-bookmarks-all.xml
