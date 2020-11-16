find ${PODS_TARGET_SRCROOT}/protos -type f | xargs protoc \
    --plugin=${PODS_ROOT}/gRPC-Swift-Plugins/bin/protoc-gen-swift \
    --plugin=protoc-gen-grpc=${PODS_ROOT}/gRPC-Swift-Plugins/bin/protoc-gen-grpc-swift \
    -I${PODS_TARGET_SRCROOT}/protos \
    --swift_out=Visibility=Public:${PODS_TARGET_SRCROOT}/swift \
    --grpc_out=Visibility=Public,Client=true,Server=false:${PODS_TARGET_SRCROOT}/swift
