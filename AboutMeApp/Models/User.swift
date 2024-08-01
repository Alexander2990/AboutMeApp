//
//  User.swift
//  AboutMeApp
//
//  Created by Александр on 30.07.2024.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Alexander",
            password: "123",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let photo: String
    let name: String
    let surname: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            photo: "Фото",
            name: "Александр",
            surname: "Григоренко",
            bio: """
                Я живу на севере, в небольшом поселке Игрим, в ХМАО на острове в тайге с населением до 10 тысяч человек. Когда то здесь проходил первый магистральный газопровод. У нас есть всего две школы и колледж. Здесь тихо и спокойно, иногда скучно, но очень красиво. Основные занятия местных жителей — охота, рыбалка и собирательство. Работаю преподавателем в колледже, преподаю общеобразовательные и спец. дисциплины. У меня два высших образования инженера и магистра. Я хорошо играю на фортепиано и неплохо пою. Иногда выступаю сольно или с группой. В детстве закончил музыкальную школу по классу баян. Сейчас я в отпуске и изучаю создание приложений для iOS, так как давно пользуюсь техникой Apple и она мне очень нравится. После обучения планирую найти вторую работу или подработку, возможно, полностью перейти в разработку. Вторая причина выбора данного направления, будучи инвалидом 2-й группы, считаю формат удаленной работы большую часть времени, оптимальным для себя.
                """,
            job: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let jobTitle: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(title: "ИПК", jobTitle: .teacher, department: .trainingDivision)
    }
}

enum JobTitle: String {
    case teacher = "Учитель"
    case deputyDirector = "Водитель автобуса"
}

enum Department: String {
    case trainingDivision = "Учебный отдел"
    case carParc = "Автопарк"
}
