package com.bitmascot.ocb

import org.grails.web.util.WebUtils

class AppUtil {

/*
    //when I throw some message from 1 controller, this will work//
*/

    static saveResponse(Boolean isSuccess, def model) {
        return [isSuccess: isSuccess, model: model]
    }

    static getAppSession() {
        return WebUtils.retrieveGrailsWebRequest().session
    }

    static infoMessage(String message, boolean status = true) {
        return [info: message, success: status]
    }
}
