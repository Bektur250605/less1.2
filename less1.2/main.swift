//Создать класс Клиент с параметрами имя, фамилия, отчество, сумма кредита, срок кредита, сумма погашения, которая изначально равна 0. Создать класс Банк с параметрами клиенты. Создать внутри класса Банк функцию, рассчитывающая сумму кредита с процентами. Если клиент берет кредит на 1 год, то надбавка 30% (например: хочет взять 100000, то в итоге должен погасить 130000), на 2 - 15%, на 3 - 10%. Функция должна заполнять параметр сумма погашения для каждого клиента и распечататывать всю информацию клиента. Добавить вторую функцию, которая принимает одного клиента в аргументе, эта функция должна достать информацию по сумме погашения и распечатать график погашений по месяцам.
//


class Client{
    var name: String
    var surname: String
    var secondName: String
    var totalCredit: Int
    var termCredit: Int
    var totalPay: Int = 0
    init(name: String, surname: String, secondName: String, totalCredit: Int, termCredit: Int, totalPay: Int = 0) {
        self.name = name
        self.surname = surname
        self.secondName = secondName
        self.totalCredit = totalCredit
        self.termCredit = termCredit
        self.totalPay = totalPay
    }
    
    func showInfo(){
        print("client \(name), surname\(surname), second name \(secondName), his credit \(totalPay),  credit term \(termCredit) KGZ , he payed \(totalPay) KGS. ")
    }
}


class Bank{
    var name: String
    var clients: [Client] = []
    init(name: String, clients: [Client]) {
        self.name = name
        self.clients = clients
    }
    
    func PayCredit (to bank: Client, quanity: Int){
        bank.totalCredit -= quanity
        bank.totalPay += quanity
    }
    func clientCredit(name: Client ,choose term: Int, totalCredit: Int, termCredit: Int) {
        if term == 1 {
            name.totalCredit = totalCredit / 100 * 30 + termCredit
            
        }
        if term == 2 {
            name.totalCredit = totalCredit / 100 * 15 + termCredit
        }
        if term == 3 {
            name.totalCredit = totalCredit / 100 * 10 + termCredit
        }
        
        
        for i in clients{
            print("client - \(i.name), surname - \(i.surname), second name - \(i.secondName), his credit - \(name.totalCredit),  credit term - \(termCredit), he payed - \(i.totalPay) ")
            
        }
    }
    

    
//    func showInfo(){
//
//    }
//
}

var bektur = Client(name: "Bektur", surname: "Karimov", secondName: "Erlanbekovich", totalCredit: 0, termCredit: 0)
var bank = Bank(name: "Optima", clients: [bektur])

bank.clientCredit(name: bektur, choose: 2, totalCredit:100000 , termCredit:2000)
bank.PayCredit(to: bektur, quanity: 30000)
bank.clientCredit(name: bektur, choose: 2, totalCredit:2000 , termCredit:2000)
//bank.showInfo()
