from sqlalchemy import create_engine, MetaData


def func():

    try:
        # Create mysql engine
        #engine = create_engine('mysql+pymysql://python:123456Python@@Manaens-MacBook-Pro.local:3306/yummie')

        engine = create_engine('mysql+pymysql://root:123456@18.222.79.227:3306/test')

        # Print contents
        print("List of databases:")
        for d in engine.table_names():
            print(d)

        conn = engine.connect()

        meta = MetaData()
        meta.reflect(bind=engine)
        table = meta.tables['users']

        # display data from users table
        select_st = table.select()#.where(table.c.age > 0)
        res = conn.execute(select_st)
        for _row in res:
            print(_row)

    except Exception as e:
        print("type error: " + str(e))


if __name__ == '__main__':
    func()
