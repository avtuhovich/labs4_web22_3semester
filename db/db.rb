DB = Sequel.connect(
  adapter: :postgres,
  database: 'sinatra_seq_dev',
  host: 'localhost',
  password: '123456',
  user: 'postgres',
  max_connections: 10,

  #logger: Logger.new('log/db.log')
  )