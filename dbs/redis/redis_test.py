import redis


def func():
    try:
        r = redis.StrictRedis(host='localhost', port=6379, db=0)
        r.set('name', 'jack')
        r.get('name')

    except Exception as e:
        print("type error: " + str(e))


if __name__ == '__main__':
    func()
