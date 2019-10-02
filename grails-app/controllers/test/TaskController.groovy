package test

import grails.converters.JSON

class TaskController {

    def index() {
        redirect(action: "loginAct")

    }
    def loginAct(){


    }
    def text = request.XML?.login
   // def list = new XmlSlurper().parseText(text)
    def myAction() {
        if (request.xhr) {

            // send response to AJAX request
        } else {


        }
    }





}
