class MailingAJAXRequest {

    static sendMails(){
        $.post("/item/mails/send_request", messageContainer.getJson(),
            function (data, textStatus, jqXHR) {
                console.log("mailreq")
            },
            "json"
        );
        //console.error("AJAX POST invoked by this button was disabled, check mails.js file line 22")
    }

}