import { irpf } from "../src/main.js";

test("todos os nos", () => {
	expect(irpf(900.00)).toBe(0.0);
	expect(irpf(2902.00)).toBe(80.50);
	expect(irpf(3500.00)).toBe(170.20);
	expect(irpf(4900.00)).toBe(479.14);
});

test("todos as arestas", () => {
	expect(irpf(900.00)).toBe(0.0);
	expect(irpf(2902.00)).toBe(80.50);
	expect(irpf(3500.00)).toBe(170.20);
	expect(irpf(4900.00)).toBe(479.14);
});
