package helpers

import (
	sdk "github.com/cosmos/cosmos-sdk/types"
	"github.com/hyperledger-labs/yui-relayer/core"
	"github.com/prometheus/common/log"
)

// QueryBalance is a helper function for query balance
func QueryBalance(chain *core.ProvableChain, address sdk.AccAddress, showDenoms bool) (sdk.Coins, error) {
	coins, err := chain.QueryBalance(address)
	log.Infof("coins = %v", coins)
	if err != nil {
		return nil, err
	}

	if showDenoms {
		return coins, nil
	}

	h, err := chain.GetLatestHeight()
	if err != nil {
		return nil, err
	}

	log.Infof("height = %d", h)

	dts, err := chain.QueryDenomTraces(0, 1000, h)
	if err != nil {
		return nil, err
	}

	log.Infof("dts.DenomTraces = %d", len(dts.DenomTraces))

	if len(dts.DenomTraces) == 0 {
		return coins, nil
	}

	var out sdk.Coins
	for _, c := range coins {
		if c.Amount.Equal(sdk.NewInt(0)) {
			continue
		}

		log.Infof("c.amout = %d", c.Amount)
		log.Infof("c.Denom = %s", c.Denom)

		for i, d := range dts.DenomTraces {
			log.Infof("d = %v", d)
			if c.Denom == d.IBCDenom() {
				out = append(out, sdk.Coin{Denom: d.GetFullDenomPath(), Amount: c.Amount})
				break
			}

			if i == len(dts.DenomTraces)-1 {
				out = append(out, c)
			}
		}
	}
	return out, nil
}
