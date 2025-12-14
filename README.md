# 🎮 Gaming Arena - Blockchain Gaming Platform

A decentralized gaming platform built on **Polygon Amoy Testnet** that combines classic games with blockchain rewards. Play games, earn tokens, compete on leaderboards, form teams, and deposit crypto seamlessly.

![Built on Polygon](https://img.shields.io/badge/Built%20on-Polygon-8247E5?style=for-the-badge&logo=polygon)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

## 🌟 Features

### 🎯 Classic Games Collection
- **Chess** - Play against AI with minimax algorithm and alpha-beta pruning
- **Tetris** - Classic block stacking with score tracking
- **Snake** - Navigate and grow your snake
- **Memory** - Match pairs in minimum moves
- **2048** - Combine tiles to reach 2048

### ⛓️ Blockchain Integration
- **On-Chain Rewards**: Earn GAT tokens for game victories
- **Wallet Connection**: MetaMask integration with Polygon Amoy
- **Smart Contract**: Deployed at `0xB0B49B050ffeE857A2664B2cb5c8E08553ed08FD`
- **Network**: Polygon Amoy Testnet (Chain ID: 80002)
- **Claim Rewards**: Direct on-chain claiming for game achievements

### 💰 Multi-Coin Deposits via SideShift API

**What is SideShift?**

SideShift.ai is a cryptocurrency exchange service that allows instant, automatic conversion between different cryptocurrencies without requiring accounts or registration. It's integrated into Gaming Arena to provide seamless multi-cryptocurrency deposit functionality.

**How It Works:**

1. **Choose Your Crypto**: Select any supported cryptocurrency (BTC, ETH, USDT, USDC, DAI, SOL, LTC, DOGE, TRX, and 30+ more)
2. **Get Quote**: The system fetches real-time exchange rates from SideShift API
3. **Generate Address**: SideShift creates a unique deposit address for your transaction
4. **Send Funds**: Send your chosen cryptocurrency to the provided address
5. **Automatic Conversion**: SideShift automatically converts your deposit to MATIC
6. **Receive MATIC**: MATIC arrives directly in your connected wallet on Polygon network

**Benefits:**
- ✅ **No Sign-Up Required**: No accounts or KYC needed
- ✅ **Instant Conversion**: Automatic exchange happens in minutes
- ✅ **Wide Support**: 30+ cryptocurrencies supported
- ✅ **Transparent Rates**: Real-time quotes with no hidden fees
- ✅ **Decentralized**: Non-custodial - you control your funds
- ✅ **Tracking**: Monitor your shift status in real-time

**Technical Implementation:**
- Uses SideShift API v2 for quote generation and shift creation
- Supports both fixed-rate and variable-rate shifts
- Affiliate integration for platform revenue
- Real-time status tracking via webhooks
- Secure API key authentication

**Supported Coins Include:**
Bitcoin (BTC), Ethereum (ETH), USDT, USDC, DAI, Polygon (MATIC), Solana (SOL), Litecoin (LTC), Dogecoin (DOGE), Tron (TRX), Binance Coin (BNB), Cardano (ADA), Polkadot (DOT), Avalanche (AVAX), Chainlink (LINK), and many more.

### 👥 Team System
- **Create Teams**: Form your own gaming team
- **Invite Members**: Share unique invite codes
- **Team Leaderboard**: Compete as a team with combined scores
- **Member Management**: View all team members and their stats
- **MongoDB Storage**: All team data persisted in database

### 📊 Leaderboard & Stats
- Global player rankings by total score
- Real-time stat tracking (games played, wins, win rate)
- On-chain stats (GAT balance, verified wins)
- Username-based authentication
- Wallet address verification on PolygonScan

## 🛠️ Tech Stack

- **Framework**: [Next.js 15](https://nextjs.org/) (App Router)
- **Styling**: [Tailwind CSS](https://tailwindcss.com/)
- **UI Components**: [shadcn/ui](https://ui.shadcn.com/)
- **Blockchain**: [Ethers.js v6](https://docs.ethers.org/)
- **Database**: [MongoDB](https://www.mongodb.com/)
- **Crypto Payments**: [SideShift.ai API](https://sideshift.ai/)
- **Network**: Polygon Amoy Testnet
- **Smart Contract**: Solidity + Hardhat

## 🚀 Getting Started

### Prerequisites

- Node.js 18+ 
- MetaMask wallet
- MongoDB database
- SideShift API credentials (optional for deposits)

### Installation

1. **Clone the repository**
    ```bash
    git clone <your-repo-url>
    cd orchids-gaming-platform
    ```

2. **Install dependencies**
    ```bash
    npm install
    ```

3. **Set up environment variables**

    Create a `.env` file in the root directory:

    ```env
    # Blockchain
    PRIVATE_KEY=your_private_key_here
    POLYGON_AMOY_RPC=https://polygon-amoy.g.alchemy.com/v2/YOUR_KEY
    NEXT_PUBLIC_WALLETCONNECT_PROJECT_ID=your_walletconnect_id
    
    # Database
    MONGODB_URI=your_mongodb_connection_string
    
    # SideShift API (for multi-coin deposits)
    SIDESHIFT_SECRET=your_sideshift_secret
    SIDESHIFT_AFFILIATE_ID=your_affiliate_id
    
    # Optional APIs
    GEMINI_API_KEY=your_gemini_api_key
    PINATA_API_KEY=your_pinata_api_key
    PINATA_SECRET_KEY=your_pinata_secret_key
    ```

4. **Run the development server**
    ```bash
    npm run dev
    ```

5. **Open [http://localhost:3000](http://localhost:3000)**

## 📋 How to Use

### 1️⃣ **Create Account & Connect Wallet**
- Enter a username on the home page
- Click "Connect Wallet" to link your MetaMask
- Switch to Polygon Amoy Testnet when prompted

### 2️⃣ **Get Test MATIC**
- Visit [Polygon Faucet](https://faucet.polygon.technology/)
- Request test MATIC for Amoy Testnet
- Use for on-chain transactions

### 3️⃣ **Play Games & Earn**
- Select any game from the dashboard
- Play and achieve high scores
- Claim on-chain GAT token rewards for wins

### 4️⃣ **Deposit Crypto (Optional)**
- Navigate to "Deposit" page
- Select your preferred cryptocurrency
- Enter amount and wallet address
- Send to the provided SideShift address
- Receive MATIC on Polygon automatically
- Track conversion status in real-time

### 5️⃣ **Join or Create Teams**
- Click "Teams" in the navigation
- Create your own team or join existing ones
- Invite friends with your unique team code
- Compete together on team leaderboard

### 6️⃣ **Check Leaderboard**
- View global rankings
- See top players and teams
- Track your progress

## 🎮 Game Rewards

| Game | Reward | Condition |
|------|--------|-----------|
| Chess | 50 GAT | Beat AI opponent |
| Tetris | 1 GAT per 100 points | Score-based |
| Snake | 1 GAT per 10 points | Score-based |
| Memory | Efficiency-based | Fewer moves = more GAT |
| 2048 | 1 GAT per 100 points | Score-based |

## 🔗 Blockchain Details

### Smart Contract
- **Address**: `0xB0B49B050ffeE857A2664B2cb5c8E08553ed08FD`
- **Network**: Polygon Amoy Testnet
- **Chain ID**: 80002
- **Token**: GAT (Gaming Arena Token)

### Contract Functions
- `claimChessReward()` - Claim reward for chess victory
- `claimTetrisReward(uint256 score)` - Claim Tetris rewards
- `claimSnakeReward(uint256 score)` - Claim Snake rewards
- `claimMemoryReward(uint256 moves)` - Claim Memory rewards
- `claim2048Reward(uint256 score)` - Claim 2048 rewards
- `getPlayerStats(address player)` - View player statistics

### View on Explorer
- [PolygonScan Amoy](https://amoy.polygonscan.com/address/0xB0B49B050ffeE857A2664B2cb5c8E08553ed08FD)

## 💡 Why Polygon?

Gaming Arena is built on **Polygon Amoy Testnet** for several key reasons:

1. **⚡ Fast Transactions**: Sub-second block times ensure instant game rewards
2. **💰 Low Fees**: Near-zero gas costs make micro-transactions viable for gaming
3. **🔐 Secure**: Inherits Ethereum's security while maintaining high performance
4. **🌍 Scalable**: Can handle thousands of players and transactions
5. **♻️ Eco-Friendly**: Energy-efficient Proof-of-Stake consensus
6. **🛠️ Developer-Friendly**: EVM-compatible with excellent tooling

Perfect for gaming applications that require frequent on-chain interactions!

## 🔄 SideShift Integration Details

### API Endpoints

**Create Quote**: `/api/sideshift/quote`
- Method: POST
- Parameters: depositCoin, settleCoin, depositAmount, settleAddress
- Returns: Quote ID, rates, deposit address

**Create Shift**: `/api/sideshift/shift`
- Method: POST
- Parameters: quoteId
- Returns: Shift ID, deposit address, tracking info

**Check Status**: `/api/sideshift/status/[shiftId]`
- Method: GET
- Returns: Current status, transaction hashes, timestamps

### Flow Diagram
```
User Selects Coin → Get Quote → Create Shift → Display Address → 
User Sends Crypto → SideShift Converts → MATIC Received
```

## 📁 Project Structure

```
orchids-gaming-platform/
├── src/
│   ├── app/                    # Next.js app router pages
│   │   ├── page.tsx           # Home/Login page
│   │   ├── dashboard/         # User dashboard
│   │   ├── leaderboard/       # Global rankings
│   │   ├── teams/             # Team management
│   │   ├── deposit/           # Crypto deposit page (SideShift)
│   │   ├── games/             # Individual game pages
│   │   │   ├── chess/
│   │   │   ├── tetris/
│   │   │   ├── snake/
│   │   │   ├── memory/
│   │   │   └── 2048/
│   │   └── api/               # API routes
│   │       ├── sideshift/     # SideShift integration
│   │       │   ├── quote/     # Get exchange quote
│   │       │   ├── shift/     # Create shift order
│   │       │   └── status/    # Check shift status
│   │       └── teams/         # Team management APIs
│   ├── components/            # React components
│   │   ├── games/            # Game components
│   │   └── ui/               # UI components
│   ├── lib/                  # Utilities
│   │   ├── web3-context.tsx  # Web3 provider
│   │   ├── mongodb.ts        # Database connection
│   │   ├── sideshift.ts      # SideShift API client
│   │   └── contract.ts       # Smart contract config
│   └── contracts/            # Solidity smart contracts
├── public/                   # Static assets
├── hardhat.config.cjs       # Hardhat configuration
└── package.json
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License.

## 🔗 Links

- **Live Demo**: [Coming Soon]
- **Smart Contract**: [0xB0B49B050ffeE857A2664B2cb5c8E08553ed08FD](https://amoy.polygonscan.com/address/0xB0B49B050ffeE857A2664B2cb5c8E08553ed08FD)
- **Polygon Faucet**: https://faucet.polygon.technology/
- **SideShift**: https://sideshift.ai/
- **SideShift Docs**: https://docs.sideshift.ai/

## 🆘 Support

For issues or questions:
- Open an issue on GitHub
- Check the [Polygon documentation](https://docs.polygon.technology/)
- Visit [SideShift docs](https://docs.sideshift.ai/)

---

**Built with ❤️ on Polygon** | Play, Earn, Compete!
