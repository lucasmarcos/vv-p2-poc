function desconto(salario, aliquota, deducao) {
	return (((salario * aliquota) / 100.00) - deducao);
};

export function irpf(salario) {
	if ((salario >= 0) && (salario <= 1903.98)) {
		return desconto(salario, 0, 0);
	} else if ((salario >= 1903.99) && (salario <= 2826.65)) {
		return desconto(salario, 7.5, 142.80);
	} else if ((salario >= 2826.66) && (salario <= 3751.05)) {
		return desconto(salario, 15.0, 354.80);
	} else if ((salario >= 3751.06) && (salario <= 4664.58)) {
		return desconto(salario, 22.5, 636.13);
	} else {
		return desconto(salario, 27.5, 868.36);
	}
}

export default function main() {
}

main();
