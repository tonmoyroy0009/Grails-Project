package com.bitmascot.ocb

import demo.User

class Contact {

    Integer id
    String name
    User user

    static belongsTo = [user: User]

    static constraints = {
    }
}