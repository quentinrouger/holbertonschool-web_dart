class Password {
    String _password = "";

    String get password {
      return _password;
    }

    void set password(String password) {
        this._password = password;
    }

    Password({password}) {
        this.password = password;
    }


    bool isValid() {
        bool hasGoodLength = password.length >= 8 && password.length <= 16;
        bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
        bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
        bool hasDigits = password.contains(new RegExp(r'[0-9]'));

        return hasGoodLength && hasUppercase && hasLowercase && hasDigits;
    }

    @override
    String toString() {
        return ("Your Password is: $password");
    }
}
