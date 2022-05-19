module github.com/hyperledger-labs/yui-relayer

go 1.15

require (
	github.com/avast/retry-go v3.0.0+incompatible
	github.com/btcsuite/btcd v0.21.0-beta
	github.com/cloudflare/cfssl v1.4.1
	github.com/cosmos/cosmos-sdk v0.43.0-beta1
	github.com/cosmos/go-bip39 v1.0.0
	github.com/cosmos/ibc-go v1.0.0-beta1
	github.com/datachainlab/ibc-mock-client v0.0.0-20220113022533-5baf3f100d16
	github.com/ethereum/go-ethereum v1.9.25
	github.com/gogo/protobuf v1.3.3
	github.com/hyperledger-labs/yui-corda-ibc/go v0.0.0-20210811021327-6987ac24cf84
	github.com/hyperledger-labs/yui-fabric-ibc v0.2.0
	github.com/hyperledger-labs/yui-ibc-solidity v0.0.0-20220117004623-482544f9ca21
	github.com/hyperledger/fabric v1.4.0-rc1.0.20200416031218-eff2f9306191
	github.com/hyperledger/fabric-protos-go v0.0.0-20200707132912-fee30f3ccd23
	github.com/hyperledger/fabric-sdk-go v1.0.0-beta2.0.20200715151216-87f5eb8a655f
	github.com/pkg/errors v0.9.1
	github.com/prometheus/common v0.23.0
	github.com/spf13/cobra v1.1.3
	github.com/spf13/viper v1.7.1
	github.com/tendermint/tendermint v0.34.10
	github.com/tendermint/tm-db v0.6.4
	golang.org/x/sync v0.0.0-20201207232520-09787c993a3a
	google.golang.org/grpc v1.37.0
	google.golang.org/protobuf v1.27.1
	gopkg.in/yaml.v2 v2.4.0
)

replace (
	github.com/go-kit/kit => github.com/go-kit/kit v0.8.0
	github.com/gogo/protobuf => github.com/regen-network/protobuf v1.3.2-alpha.regen.4
	github.com/hyperledger/fabric-sdk-go => github.com/datachainlab/fabric-sdk-go v0.0.0-20200730074927-282a61dcd92e
	github.com/keybase/go-keychain => github.com/99designs/go-keychain v0.0.0-20191008050251-8e49817e8af4
)
