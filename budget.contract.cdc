pub contract Budget {

    pub var budgets: {Address: BudgetItem}

    init() {
        self.budgets = {}
    }

    pub struct BudgetItem {
        pub var account: Address
        pub var createdDate: UInt
        pub var endDate: UInt
        pub var amount: UInt
        pub var isOpen: Bool
        pub var description: String

        init(_account: Address, _createdDate: UInt, _endDate: UInt, _amount: UInt, _isOpen: Bool, _description: String) {
            self.account = _account
            self.createdDate = _createdDate
            self.endDate = _endDate
            self.amount = _amount
            self.isOpen = _isOpen
            self.description = _description
        }
    }

    pub fun createBudget(account: Address, createdDate: UInt, endDate: UInt, amount: UInt, description: String) {
        let newBudgetItem = BudgetItem(
            _account: account,
            _createdDate: createdDate,
            _endDate: endDate,
            _amount: amount,
            _isOpen: true,
            _description: description
        )
        self.budgets[account] = newBudgetItem
    }
}
