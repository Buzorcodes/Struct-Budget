import Budget from 0x05

transaction(account: Address, title: String, description: String, 
amount: UInt, isActive: Bool, createdDate: UInt) {

    prepare(signer: AuthAccount) {}

    execute {
        Budget.createBudget(account: account, title: title,  description: description, amount: amount, isActive: isActive, createdDate: createdDate)
        log("Budget added Successfully")
    }
}
