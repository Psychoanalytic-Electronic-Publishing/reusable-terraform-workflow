echo "hello=123\nworld=456" | while read LINE ; do
    SPLIT=(${LINE//=/ })
    VALUE=${SPLIT[1]}
    echo "::add-mask::$VALUE" 
done
echo "HELLO"