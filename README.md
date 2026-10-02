# APC Token (APC)

Fixed-supply BEP-20 token on BNB Smart Chain, built with [OpenZeppelin Contracts v5.4.0](https://github.com/OpenZeppelin/openzeppelin-contracts).

## Contract

| Item | Value |
| --- | --- |
| Name | APC |
| Symbol | APC |
| Standard | BEP-20 (ERC-20 compatible) |
| Total Supply | 10,000,000,000 APC (fixed, minted once at deployment) |
| Decimals | 18 |
| Contract Address | [`0x50635E9E8EB082E0709422FC687b6FD0e5F8d9C5`](https://bscscan.com/token/0x50635E9E8EB082E0709422FC687b6FD0e5F8d9C5) |

### Properties

- **Fixed supply** — the full 10B supply is minted once in the constructor to the initial holder; no further minting is possible
- **Burnable** — holders can burn their own tokens via `ERC20Burnable`
- **No privileged roles** — no owner, no mint, no pause, no blacklist, no tax, no proxy

## Links

- Website: [aipaywithcrypto.com](https://aipaywithcrypto.com/)
- Linktree: [linktr.ee/aipaywithcrypto](https://linktr.ee/aipaywithcrypto)
- BscScan: [Token page](https://bscscan.com/token/0x50635E9E8EB082E0709422FC687b6FD0e5F8d9C5)

## Repository Structure

```
├── contract/
│   └── APC.sol        # Token contract (the only custom logic)
└── Audit Report/      # Security audit reports
```

## License

[MIT](contract/APC.sol)
