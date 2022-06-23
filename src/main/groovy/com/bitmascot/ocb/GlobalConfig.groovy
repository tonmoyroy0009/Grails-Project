package com.bitmascot.ocb

class GlobalConfig {
    public static final def USER_TYPE = [
            ADMINISTRATOR: "ADMINISTRATOR",
            REGULAR_MEMBER: "REGULAR_MEMBER",
    ]

    static Integer itemsPerPage() {
        return 5
    }
}
