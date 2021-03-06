#ifndef TYPEDEXCEPTION_H
#define TYPEDEXCEPTION_H

enum TypeErrors {
    NOT_ERROR = 0,
    DONT_CREATE_FOLDER = 1,
    DONT_CREATE_KEY = 2,
    INCORRECT_PASSWORD = 3,
    DONT_SIGN = 4,
    INCORRECT_USER_DATA = 5,
    INCORRECT_ADDRESS_OR_PUBLIC_KEY = 6,
    PRIVATE_KEY_ERROR = 7,
    OTHER_ERROR = 1000
};

struct TypedException {
    TypeErrors numError;
    std::string description;

    TypedException()
        : numError(TypeErrors::NOT_ERROR)
        , description("")
    {}

    TypedException(const TypeErrors &numError, const std::string &description)
        : numError(numError)
        , description(description)
    {}
};

#define throwErrTyped(type, s) { \
{ \
    throw ::TypedException(type, s + std::string(". Error at file ") \
        + std::string(__FILE__) + std::string(" line ") + std::to_string(__LINE__)); \
} \
}

#define CHECK_TYPED(v, type, s) { \
if (!(v)) { \
    throwErrTyped(type, s); \
} \
}

#endif // TYPEDEXCEPTION_H
