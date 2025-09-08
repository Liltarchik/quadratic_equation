

def solv_square(a, b, c):
        d = discriminant(a, b, c)
        if d > 0:
            root1 = (-b + d**0.5) / (2*a)
            root2 = (-b - d**0.5) / (2*a)
            return root1, root2
        elif d == 0:
            root = -b / (2*a)
            return root,
        else:
            return None
def ask_value():
        a = int(input("Enter coefficient a: "))
        b = int(input("Enter coefficient b: "))
        c = int(input("Enter coefficient c: "))
        return a, b, c
def discriminant(a, b, c):
        return b**2 - 4*a*c

def quadratic_equation():
    a, b, c = ask_value()
    roots = solv_square(a, b, c)
    if roots is None:
        print("No real roots")
    elif len(roots) == 1:
        print(f"One real root: {roots[0]}")
    else:
        print(f"Two real roots: {roots[0]} and {roots[1]}")



def main():
    quadratic_equation()

main()