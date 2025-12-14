// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GamingArenaToken is ERC20, Ownable {
    uint256 public constant CHESS_WIN_REWARD = 10 * 10**18;
    uint256 public constant TETRIS_WIN_REWARD = 5 * 10**18;
    uint256 public constant SNAKE_WIN_REWARD = 3 * 10**18;
    uint256 public constant MEMORY_WIN_REWARD = 2 * 10**18;
    uint256 public constant GAME2048_WIN_REWARD = 20 * 10**18;
    
    mapping(address => uint256) public playerWins;
    mapping(address => uint256) public totalGamesPlayed;
    mapping(address => uint256) public lastClaimTime;
    
    uint256 public constant CLAIM_COOLDOWN = 1 minutes;
    
    event GameWon(address indexed player, string gameType, uint256 reward);
    event RewardClaimed(address indexed player, uint256 amount);
    
    constructor() ERC20("Gaming Arena Token", "GAME") Ownable(msg.sender) {
        _mint(address(this), 1000000 * 10**18);
    }
    
    function claimChessReward() external {
        require(block.timestamp >= lastClaimTime[msg.sender] + CLAIM_COOLDOWN, "Cooldown not passed");
        require(balanceOf(address(this)) >= CHESS_WIN_REWARD, "Insufficient contract balance");
        
        lastClaimTime[msg.sender] = block.timestamp;
        playerWins[msg.sender]++;
        totalGamesPlayed[msg.sender]++;
        
        _transfer(address(this), msg.sender, CHESS_WIN_REWARD);
        emit GameWon(msg.sender, "chess", CHESS_WIN_REWARD);
    }
    
    function claimTetrisReward(uint256 score) external {
        require(block.timestamp >= lastClaimTime[msg.sender] + CLAIM_COOLDOWN, "Cooldown not passed");
        require(score >= 1000, "Score too low");
        
        uint256 reward = TETRIS_WIN_REWARD;
        if (score >= 5000) reward = reward * 2;
        if (score >= 10000) reward = reward * 3;
        
        require(balanceOf(address(this)) >= reward, "Insufficient contract balance");
        
        lastClaimTime[msg.sender] = block.timestamp;
        playerWins[msg.sender]++;
        totalGamesPlayed[msg.sender]++;
        
        _transfer(address(this), msg.sender, reward);
        emit GameWon(msg.sender, "tetris", reward);
    }
    
    function claimSnakeReward(uint256 score) external {
        require(block.timestamp >= lastClaimTime[msg.sender] + CLAIM_COOLDOWN, "Cooldown not passed");
        require(score >= 50, "Score too low");
        
        uint256 reward = SNAKE_WIN_REWARD;
        if (score >= 100) reward = reward * 2;
        if (score >= 200) reward = reward * 3;
        
        require(balanceOf(address(this)) >= reward, "Insufficient contract balance");
        
        lastClaimTime[msg.sender] = block.timestamp;
        playerWins[msg.sender]++;
        totalGamesPlayed[msg.sender]++;
        
        _transfer(address(this), msg.sender, reward);
        emit GameWon(msg.sender, "snake", reward);
    }
    
    function claimMemoryReward(uint256 moves) external {
        require(block.timestamp >= lastClaimTime[msg.sender] + CLAIM_COOLDOWN, "Cooldown not passed");
        require(moves <= 30, "Too many moves");
        
        uint256 reward = MEMORY_WIN_REWARD;
        if (moves <= 20) reward = reward * 2;
        if (moves <= 15) reward = reward * 3;
        
        require(balanceOf(address(this)) >= reward, "Insufficient contract balance");
        
        lastClaimTime[msg.sender] = block.timestamp;
        playerWins[msg.sender]++;
        totalGamesPlayed[msg.sender]++;
        
        _transfer(address(this), msg.sender, reward);
        emit GameWon(msg.sender, "memory", reward);
    }

    function claim2048Reward(uint256 score) external {
        require(block.timestamp >= lastClaimTime[msg.sender] + CLAIM_COOLDOWN, "Cooldown not passed");
        require(score >= 2000, "Score too low"); // Require at least 2000 score
        
        uint256 reward = GAME2048_WIN_REWARD;
        if (score >= 5000) reward = reward * 2;
        if (score >= 10000) reward = reward * 3;
        
        require(balanceOf(address(this)) >= reward, "Insufficient contract balance");
        
        lastClaimTime[msg.sender] = block.timestamp;
        playerWins[msg.sender]++;
        totalGamesPlayed[msg.sender]++;
        
        _transfer(address(this), msg.sender, reward);
        emit GameWon(msg.sender, "2048", reward);
    }
    
    function getPlayerStats(address player) external view returns (
        uint256 wins,
        uint256 gamesPlayed,
        uint256 tokenBalance,
        uint256 nextClaimTime
    ) {
        wins = playerWins[player];
        gamesPlayed = totalGamesPlayed[player];
        tokenBalance = balanceOf(player);
        nextClaimTime = lastClaimTime[player] + CLAIM_COOLDOWN;
    }
    
    function getContractBalance() external view returns (uint256) {
        return balanceOf(address(this));
    }
    
    function addRewardPool(uint256 amount) external onlyOwner {
        _mint(address(this), amount);
    }
}