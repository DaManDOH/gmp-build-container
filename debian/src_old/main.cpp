#include <iostream>
#include <string>

int main(int argc, char* argv[]) {
    std::cout << "Helps to have a message\n\n";
    for (int arg_idx = 0; arg_idx < argc; ++arg_idx) {
        std::cout << std::string(argv[arg_idx]) << "\n";
    }
    std::cout << std::flush;
    return 0;
}
