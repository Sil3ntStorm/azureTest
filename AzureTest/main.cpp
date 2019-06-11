#include <iostream>
#include <QtCore/QString>
#pragma lib("Qt5Core")

int main(int argc, char** argv) {
	QString text = "Your %1 command line arguments are:\n";
	text = text.arg(argc);
	for (int i = 0; i < argc; ++i) {
		text.append(argv[i]).append('\n');
	}
	std::cout << text.data() << '\n';
	return 0;
}