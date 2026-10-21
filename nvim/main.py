class Person:
    def __init__(self, name: str, age: int) -> None:
        self.name = name
        self.age = age

    def say_hi(self, name: str):
        print(f"{self.name} says hi to {self}")


p = Person("Matilda", 25)
p.say_hi("Jorge")


def foo(p1: int, p2: int):
    """Docs about
    this function"""
    return True
