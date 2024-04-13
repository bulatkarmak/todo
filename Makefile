.PHONY: protoc-gen

PROTO_DIR=./api/
GEN_PROTO_DIR=./api/proto/

protoc-gen:
	protoc --proto_path=$(PROTO_DIR) \
           		--go_out=$(GEN_PROTO_DIR) --go_opt=paths=source_relative \
           		--go-grpc_out=$(GEN_PROTO_DIR) --go-grpc_opt=paths=source_relative \
           		$(PROTO_DIR)/todo.proto
