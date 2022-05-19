module github.com/hyperledger-labs/yui-relayer/tests/chains/fabric/chaincode/fabibc

go 1.15

replace (
	github.com/btcsuite/btcd => github.com/btcsuite/btcd v0.22.1
	github.com/cosmos/cosmos-sdk v0.43.0-beta1 => ./cosmos-sdk
	github.com/cosmos/ibc-go v1.0.0-beta1 => ./ibc-go
	github.com/hyperledger-labs/yui-fabric-ibc v0.2.0 => ./yui-fabric-ibc
	github.com/prometheus/common => github.com/prometheus/common v0.23.0
	github.com/tendermint/tendermint => github.com/tendermint/tendermint v0.34.10
)

require (
	github.com/99designs/keyring v1.2.1 // indirect
	github.com/cosmos/btcutil v1.0.4 // indirect
	github.com/cosmos/cosmos-sdk v0.43.0-beta1
	github.com/cosmos/ibc-go v1.0.0-beta1
	github.com/cosmos/ledger-cosmos-go v0.11.1 // indirect
	github.com/gorilla/handlers v1.5.1 // indirect
	github.com/hdevalence/ed25519consensus v0.0.0-20220222234857-c00d1f31bab3 // indirect
	github.com/hyperledger-labs/yui-corda-ibc/go v0.0.0-20210811021327-6987ac24cf84
	github.com/hyperledger-labs/yui-fabric-ibc v0.2.0
	github.com/hyperledger/fabric v2.1.1+incompatible // indirect
	github.com/hyperledger/fabric-amcl v0.0.0-20210603140002-2670f91851c8 // indirect
	github.com/hyperledger/fabric-chaincode-go v0.0.0-20200511190512-bcfeb58dd83a
	github.com/hyperledger/fabric-contract-api-go v1.1.0
	github.com/hyperledger/fabric-lib-go v1.0.0 // indirect
	github.com/miekg/pkcs11 v1.1.1 // indirect
	github.com/rakyll/statik v0.1.7 // indirect
	github.com/regen-network/cosmos-proto v0.3.1 // indirect
	github.com/sykesm/zap-logfmt v0.0.4 // indirect
	github.com/tendermint/btcd v0.1.1 // indirect
	github.com/tendermint/crypto v0.0.0-20191022145703-50d29ede1e15 // indirect
	github.com/tendermint/go-amino v0.16.0 // indirect
	github.com/tendermint/tendermint v0.35.2
	github.com/tendermint/tm-db v0.6.7
)

replace (
	github.com/go-kit/kit => github.com/go-kit/kit v0.8.0
	github.com/gogo/protobuf => github.com/regen-network/protobuf v1.3.2-alpha.regen.4
	github.com/keybase/go-keychain => github.com/99designs/go-keychain v0.0.0-20191008050251-8e49817e8af4
)
