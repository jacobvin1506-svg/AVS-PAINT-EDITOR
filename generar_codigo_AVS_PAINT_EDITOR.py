import random

print("=====================================")
print(" AVS PAINT EDITOR (UNOFFICIAL)")
print(" ACTIVATION CODE GENERATOR")
print("=====================================\n")

# Generar codigo simple SIN fecha
rand = random.randint(1000, 9999)
code = f"AVS-PAINT-{rand}"

print("Activation code generated:\n")
print(code)
print("\nThis code is FREE and symbolic.")

# Guardar en archivo
with open("activation_code.txt", "w") as f:
f.write(code)

print("\nCode saved as activation_code.txt")
input("\nPress Enter to exit...")
