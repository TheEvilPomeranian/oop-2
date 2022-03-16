#include <iostream>
#include <iomanip> 
using namespace std;

int main() {
	setlocale(LC_ALL, "ru");

	int n = 20;
	int x = 1;
	for (int floor = 0; floor < 20; floor++){
		for (int element = 0; element < n; element++){
			cout << " ";
		}
		n--;
		for (int element = 0; element < x; element++){
			cout << "X";
		}
		x += 2;
		cout << endl;
	}

	unsigned int numb;
	unsigned long fact = 1;
	do {
		cout << "Enter a number: "; cin >> numb;
		for (int j = numb; j > 0; j--)
			fact *= j;
		cout << "Factorial is " << fact << endl;
	} while (numb != 0);
		return 0;

		double contribution, year, percent, newAmount;
		cout << "Введите начальный вклад: "; cin >> contribution;
		cout << "Введите число лет: "; cin >> year;
		cout << "Введите процентную ставку: "; cin >> percent;
		for (int i = 0; i < year; i++) {
			contribution = contribution + (contribution * percent / 100);

		}
		cout << "Через " << year << " лет (года) вы получите: " << contribution << endl;

		int p, c, ans = 1;
		cout << "Введите число гостей (не меньше, чем месть): "; cin >> p;
		cout << "Введите число мест: "; cin >> c;
		for (int i = c; i >0; i-- ) {
			ans = ans * p;
			p--;
		}

		cout << "Ответ: " << ans<< endl;

		char ch;
		do {
			int f, s, p, f1, s1, p1, F=0, S=0, P=0;
			cout << "Введите первую сумму: "; cin >> f >> s >> p;
			cout << "Введите вторую сумму: "; cin >> f1 >> s1 >> p1;
			P = p + p1;
			if (P > 11) {
				S = S + P / 12;
				P = P % 12;
			}
			S = S + s + s1;
			if (S > 19) {
				F = F + S / 20;
				S = S % 20;
			}
			F = F + f + f1;
			cout << "Всего: " << F << " " << S << " " << P << endl;
			cout << "Продолжить? ('Да'нажмите y, 'Нет' нажмите n) "; cin >> ch;
		} while (ch != 'n');

		int year = 0;
		double contribution, percent, newAmount;
		cout << "Введите начальный вклад: "; cin >> contribution;
		cout << "Введите процентную ставку: "; cin >> percent;
		cout << "Введите конечную сумму: "; cin >> newAmount;
		do {
			contribution = contribution + (contribution * percent / 100);
			year ++;
		} while (contribution < newAmount);
		cout << "Ответ: " << year << endl;

		int f, s, p, f1, s1, p1, F=0, S=0, P=0, a;
		char oper;
		cout << "Введите первую сумму: "; cin >> f >> s >> p;
		cout << "Выберете действие (+, -, *)"; cin >> oper;
		switch (oper) {
		case '+':
			cout << "Введите вторую сумму: "; cin >> f1 >> s1 >> p1;
			P = p + p1;
			if (P > 11) {
				S = S + P / 12;
				P = P % 12;
			}
			S = S + s + s1;
			if (S > 19) {
				F = F + S / 20;
				S = S % 20;
			}
			F = F + f + f1;
			cout << "Всего: " << F << " " << S << " " << P << endl;
			break;
		case '-':
			cout << "Введите вторую сумму: "; cin >> f1 >> s1 >> p1;
			p = f * 20 * 12 + s * 12 + p;
			p1 = f1 * 20 * 12 + s1 * 12 + p1;
			if (p > p1) {
				P = p - p1;
				S = P / 12;
				F = S / 20;
				P = P % 12;
				S = S % 20;
				cout << "" << F << " " << S << " " << P << endl;
			}
			else {
				P = p1 - p;
				S = P / 12;
				F = S / 20;
				P = P % 12;
				S = S % 20;
				cout << "" << F << " " << S << " " << P << endl;
			}
			break;
		case '*':
			cout << "Введите вещественное число: "; cin >> a;
			p = f * 20 * 12 + s * 12 + p;
			P = p * a;
			S = P / 12;
			F = S / 20;
			P = P % 12;
			S = S % 20;
			cout << "" << F << " " << S << " " << P << endl;
			break;
		}

	char ch;
	do{
		int a, b, c, d;
		char s, oper;
		cout << "Введите первую дробь: "; cin >> a >> s >> b;
		cout << "Введите вторую дробь: "; cin >> c >> s >> d;
		cout << "Выберете действие (+, -, *, /)"; cin >> oper;
		switch (oper) {
		case '+':
			cout << "Сумма равна: " << a * d + b * c << "/" << b * d << endl;
			break;
		case '-':
			cout << "Разность: " << a * d - b * c << "/" << b * d << endl;
			break;
		case '*':
			cout << "Произведение: " << a * c << "/" << b * d << endl;
			break;
		case '/':
			cout << "Деление: " << a * d << "/" << b * c << endl;
			break;
		}
		cout << "Продолжить? ('Да'нажмите y, 'Нет' нажмите n) "; cin >> ch;
	} while (ch != 'n');


}
