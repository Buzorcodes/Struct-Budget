import Budget from 0x05

pub fun main(account: Address): Budget.BudgetItem {
    return Budget.budgets[account]!
}
