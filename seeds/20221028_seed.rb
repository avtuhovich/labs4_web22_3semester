# Seeder.apply db.drop_table?(:schema_seeds)
Sequel.seed(:development, :test) do
  def run
    puts 'Start truncate for all models'
    DB[:applies].truncate(cascade:true, restart: true)
    DB[:geeks].truncate(cascade:true, restart: true)
    DB[:jobs].truncate(cascade:true, restart: true)
    DB[:companies].truncate(cascade:true, restart: true)
    puts'Models truncated'
    puts'Start to write models'

    DB[:companies].insert(name: "Амазон", location: "Сиэтл")
    DB[:companies].insert(name: "Купанг", location: "Сеул")
    DB[:companies].insert(name: "Озон", location: "Москва")
    DB[:companies].insert(name: "Вайлдберис", location: "Санкт-Петербург")

    DB[:jobs].insert(name: "Маркетолог", place: "Сеул", company_id: 1)
    DB[:jobs].insert(name: "Упаковщик товара", place: "Москва", company_id: 2)
    DB[:jobs].insert(name: "Программист Go", place: "Москва", company_id: 3)
    DB[:jobs].insert(name: "Системный администратор", place: "Сиэтл", company_id: 4)

    DB[:geeks].insert(name: "Юки", stack: "Маркетолог", resume: "true")
    DB[:geeks].insert(name: "Марк", stack: "Системный администратор", resume: "false")
    DB[:geeks].insert(name: "Рома", stack: "Программист Go", resume: "true")
    DB[:geeks].insert(name: "Стас", stack: "Программист Go", resume: "false")

    DB[:applies].insert(job_id: 1, geek_id: 1)
    DB[:applies].insert(job_id: 1, geek_id: 2)
    DB[:applies].insert(job_id: 4, geek_id: 2)
    DB[:applies].insert(job_id: 2, geek_id: 3)

    puts 'Models seeded'
  end
end