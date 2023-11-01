import Budget from 0xf8d6e0586b0a20c7

pub fun main(account: Address): Budget.BudgetItem {
    return Budget.budgets[account]!
}
